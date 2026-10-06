/**
 * VARUN AQUA TECH - Custom Machines CRUD & WhatsApp Order System
 * Founder & Proprietor: Selvam .V
 * Direct WhatsApp: +91 88380 55968
 */

const DEFAULT_MACHINES = [];

const PRESET_IMAGES = [
  { label: "Smart Countertop RO Dispenser (Premium Kitchen)", path: "assets/premium-ro-dispenser.jpg" },
  { label: "Commercial RO Plant & Skid Frame (50-5000 LPH)", path: "assets/commercial-plant.jpg" },
  { label: "Genuine RO Spare Parts & Assembly Kits", path: "assets/ro-spare-parts.jpg" },
  { label: "Water Quality Testing & Digital TDS Meter", path: "assets/water-tds-testing.jpg" },
  { label: "Showroom & Customer Experience Center", path: "assets/storefront-showroom.jpg" },
  { label: "RO Technician Doorstep Service & Filters", path: "assets/ro-service-technician-filters.jpg" },
  { label: "RO Sales & Modern Display Unit", path: "assets/service-sales.jpg" },
  { label: "Doorstep Wall Mounting Installation", path: "assets/service-installation.jpg" },
  { label: "Booster Pump & Electronics Repair", path: "assets/service-repair.jpg" },
  { label: "Routine Maintenance & Sanitation", path: "assets/service-maintenance.jpg" },
  { label: "Annual Maintenance Contract (AMC) Support", path: "assets/service-amc.jpg" },
  { label: "Filter Cartridges & RO Membrane Pack", path: "assets/service-filters.jpg" },
  { label: "Domestic Alkaline Wall-Mounted RO", path: "assets/bele-water-purifier.jpg" },
  { label: "Compact Under-Sink Filtration Unit", path: "assets/benchtop-filtration.jpg" },
  { label: "Commercial 50 LPH Purifier Cabinet", path: "assets/bluetech-smart.jpg" },
  { label: "Heavy-Duty Multi-Stage Skid System", path: "assets/reverse-osmosis-system.jpg" },
  { label: "Kitchen Counter Drinking Tap Installation", path: "assets/modern-kitchen-tap.jpg" },
  { label: "Multi-Layer Spiral-Wound RO Membrane", path: "assets/ro-membrane-layers.jpg" }
];

const WHATSAPP_PHONE = "918838055968";

class MachineManager {
  constructor() {
    this.machines = [];
    this.currentFilter = "All";
    this.searchQuery = "";
    this.assetPrefix = this.detectAssetPrefix();
    this.init();
  }

  detectAssetPrefix() {
    const path = window.location.pathname;
    if (path.includes("/custom-machines/") || path.includes("/about/") || path.includes("/ro-") || path.includes("/contact/")) {
      return "../";
    }
    return "";
  }

  resolveImagePath(imgPath) {
    if (!imgPath) return this.assetPrefix + "assets/premium-ro-dispenser.jpg";
    if (imgPath.startsWith("http://") || imgPath.startsWith("https://") || imgPath.startsWith("data:")) {
      return imgPath;
    }
    const clean = imgPath.replace(/^(\.\.\/|\.\/)/, "");
    return this.assetPrefix + clean;
  }

  async init() {
    await this.loadMachines();
    this.renderCatalog();
    this.setupEventListeners();
  }

  async loadMachines() {
    try {
      const res = await fetch("/api/machines", { cache: "no-store" });
      if (res.ok) {
        const data = await res.json();
        if (Array.isArray(data)) {
          this.machines = data;
          localStorage.setItem("varun_custom_machines", JSON.stringify(data));
          return;
        }
      }
    } catch (e) {
      console.log("Using localStorage fallback for machines:", e);
    }

    const saved = localStorage.getItem("varun_custom_machines");
    if (saved) {
      try {
        this.machines = JSON.parse(saved);
        return;
      } catch (e) {
        console.error("Failed to parse saved machines", e);
      }
    }

    this.machines = [];
  }

  async persist() {
    localStorage.setItem("varun_custom_machines", JSON.stringify(this.machines));
    try {
      await fetch("/api/machines", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(this.machines)
      });
    } catch (e) {
      // Offline or static fallback
    }
  }

  getFilteredMachines() {
    return this.machines.filter(m => {
      const matchCategory = this.currentFilter === "All" || m.category.toLowerCase() === this.currentFilter.toLowerCase();
      const q = this.searchQuery.toLowerCase().trim();
      const matchSearch = !q || 
        (m.name && m.name.toLowerCase().includes(q)) || 
        (m.capacity && m.capacity.toLowerCase().includes(q)) || 
        (m.stages && m.stages.toLowerCase().includes(q)) ||
        (m.idealFor && m.idealFor.toLowerCase().includes(q));
      return matchCategory && matchSearch;
    });
  }

  redirectToWhatsApp(machine) {
    if (!machine) return;
    const text = `Hello VARUN AQUA TECH (Founder: Selvam .V),\n\nI would like to inquire about the custom-built machine:\n• *Model:* ${machine.name}\n• *Category:* ${machine.category} RO\n• *Capacity:* ${machine.capacity}\n• *Stages / Tech:* ${machine.stages}\n• *Ideal For:* ${machine.idealFor}\n\nPlease share quotation, availability, and installation details for Dharmapuri.`;
    const url = `https://wa.me/${WHATSAPP_PHONE}?text=${encodeURIComponent(text)}`;
    window.open(url, "_blank");
  }

  renderCatalog() {
    const container = document.getElementById("custom-machines-grid");
    if (!container) return;

    if (this.machines.length === 0) {
      container.innerHTML = `
        <div class="crud-empty-card" style="text-align: center; padding: 3.5rem 1.5rem; background: #FFFFFF; border: 2px dashed var(--color-border); border-radius: var(--radius-xl); grid-column: 1 / -1; box-shadow: var(--shadow-sm);">
          <div style="font-size: 2.8rem; margin-bottom: 0.75rem;">⚙️</div>
          <h3 style="color: var(--color-navy); margin-bottom: 0.5rem; font-size: 1.4rem;">Custom RO Machines Ready</h3>
          <p style="color: var(--color-text-muted); max-width: 600px; margin: 0 auto 1.5rem auto; font-size: 0.95rem; line-height: 1.6;">
            Have a custom requirement for your home, commercial kitchen, clinic, or industry? Click below to add and publish custom machines with direct WhatsApp ordering.
          </p>
          <button class="btn btn-primary btn-lg" onclick="machineManager.openAddModal()">＋ Add Custom Machine</button>
        </div>
      `;
      return;
    }

    const filtered = this.getFilteredMachines();

    if (filtered.length === 0) {
      container.innerHTML = `
        <div class="crud-empty-state" style="grid-column: 1 / -1; text-align: center; padding: 2.5rem; background: #fff; border-radius: var(--radius-lg); border: 1px solid var(--color-border);">
          <div style="font-size: 2.2rem; margin-bottom: 0.5rem;">🔍</div>
          <h3 style="color: var(--color-navy);">No Matching Machines Found</h3>
          <p style="color: var(--color-text-muted); font-size: 0.95rem;">No machines matched "${this.searchQuery}" in category "${this.currentFilter}".</p>
          <button class="btn btn-secondary btn-sm" onclick="machineManager.resetFilters()">Clear Filters</button>
        </div>
      `;
      return;
    }

    container.innerHTML = filtered.map(m => {
      const imgSrc = this.resolveImagePath(m.image);
      const isFreeInstall = (m.badge || "").toLowerCase().includes("free installation");
      const badgeClass = isFreeInstall ? "badge-free-install" : "badge-custom";

      return `
        <article class="custom-machine-card" data-id="${m.id}">
          <div class="machine-card-image-wrap" onclick="machineManager.redirectToWhatsApp(machineManager.getById('${m.id}'))" title="Click to order on WhatsApp">
            <span class="machine-badge ${badgeClass}">${m.badge || m.category}</span>
            <img src="${imgSrc}" alt="${m.name} - VARUN AQUA TECH" loading="lazy" onerror="this.src='${this.resolveImagePath('assets/premium-ro-dispenser.jpg')}'">
            <div class="machine-image-overlay">
              <span>💬 Click to Order on WhatsApp</span>
            </div>
          </div>

          <div class="machine-card-body">
            <div class="machine-header-row">
              <span class="machine-category-pill">${m.category} RO</span>
              <div class="machine-admin-actions">
                <button class="btn-icon-sm" onclick="machineManager.openEditModal('${m.id}')" title="Edit Machine">✏️</button>
                <button class="btn-icon-sm btn-icon-danger" onclick="machineManager.deleteMachine('${m.id}')" title="Delete Machine">🗑️</button>
              </div>
            </div>

            <h3 class="machine-title" onclick="machineManager.redirectToWhatsApp(machineManager.getById('${m.id}'))">${m.name}</h3>
            
            <div class="machine-specs-list">
              <div class="spec-row">
                <span class="spec-icon">⚡</span>
                <span class="spec-key">Capacity:</span>
                <span class="spec-val">${m.capacity}</span>
              </div>
              <div class="spec-row">
                <span class="spec-icon">🛡️</span>
                <span class="spec-key">Stages:</span>
                <span class="spec-val">${m.stages}</span>
              </div>
              <div class="spec-row">
                <span class="spec-icon">📍</span>
                <span class="spec-key">Ideal For:</span>
                <span class="spec-val">${m.idealFor}</span>
              </div>
            </div>

            <p class="machine-desc">${m.description || ""}</p>

            <div class="machine-card-footer">
              <div class="machine-consult-tag" style="display: flex; align-items: center; gap: 0.4rem; font-size: 0.82rem; color: var(--color-blue); font-weight: 700;">
                <span>🛡️</span> Custom Build
              </div>
              <button class="btn btn-whatsapp btn-sm machine-order-btn" onclick="machineManager.redirectToWhatsApp(machineManager.getById('${m.id}'))">
                <span>💬</span> Order on WhatsApp
              </button>
            </div>
          </div>
        </article>
      `;
    }).join("");
  }

  getById(id) {
    return this.machines.find(m => m.id === id);
  }

  resetFilters() {
    this.currentFilter = "All";
    this.searchQuery = "";
    const searchInput = document.getElementById("machine-search-input");
    if (searchInput) searchInput.value = "";
    document.querySelectorAll(".crud-filter-btn").forEach(b => {
      b.classList.toggle("active", b.getAttribute("data-filter") === "All");
    });
    this.renderCatalog();
  }

  setupEventListeners() {
    // Filter buttons
    document.querySelectorAll(".crud-filter-btn").forEach(btn => {
      btn.addEventListener("click", () => {
        document.querySelectorAll(".crud-filter-btn").forEach(b => b.classList.remove("active"));
        btn.classList.add("active");
        this.currentFilter = btn.getAttribute("data-filter");
        this.renderCatalog();
      });
    });

    // Search input
    const searchInput = document.getElementById("machine-search-input");
    if (searchInput) {
      searchInput.addEventListener("input", (e) => {
        this.searchQuery = e.target.value;
        this.renderCatalog();
      });
    }

    // Add Machine button
    const addBtn = document.getElementById("btn-add-machine");
    if (addBtn) {
      addBtn.addEventListener("click", () => this.openAddModal());
    }

    // Modal submit
    const form = document.getElementById("machine-crud-form");
    if (form) {
      form.addEventListener("submit", (e) => {
        e.preventDefault();
        this.handleFormSubmit();
      });
    }

    // Modal close buttons and backdrop click
    document.querySelectorAll(".crud-modal-close, #btn-cancel-modal").forEach(btn => {
      btn.addEventListener("click", () => this.closeModal());
    });

    const modalOverlay = document.getElementById("machine-crud-modal");
    if (modalOverlay) {
      modalOverlay.addEventListener("click", (e) => {
        if (e.target === modalOverlay) this.closeModal();
      });
    }

    document.addEventListener("keydown", (e) => {
      if (e.key === "Escape") this.closeModal();
    });

    // Image preset select change
    const presetSelect = document.getElementById("m-form-image-preset");
    const customImgInput = document.getElementById("m-form-image-custom");
    if (presetSelect && customImgInput) {
      presetSelect.addEventListener("change", () => {
        if (presetSelect.value) {
          customImgInput.value = presetSelect.value;
          this.updateImagePreview(presetSelect.value);
        }
      });
      customImgInput.addEventListener("input", () => {
        this.updateImagePreview(customImgInput.value);
      });
    }
  }

  updateImagePreview(url) {
    const preview = document.getElementById("m-form-image-preview");
    if (preview) {
      preview.src = this.resolveImagePath(url);
    }
  }

  openAddModal() {
    document.getElementById("modal-title").innerText = "Add New Custom RO Machine";
    document.getElementById("machine-id").value = "";
    document.getElementById("m-form-name").value = "";
    document.getElementById("m-form-category").value = "Domestic";
    document.getElementById("m-form-capacity").value = "15 LPH";
    document.getElementById("m-form-stages").value = "8-Stage RO + UV + Alkaline + Active Copper";
    document.getElementById("m-form-ideal").value = "Dharmapuri Borewell / Overhead Tank";
    document.getElementById("m-form-badge").value = "Free Installation Included";
    document.getElementById("m-form-image-custom").value = "assets/premium-ro-dispenser.jpg";
    document.getElementById("m-form-image-preset").value = "assets/premium-ro-dispenser.jpg";
    document.getElementById("m-form-desc").value = "Custom-assembled by Selvam .V with high-grade booster pump and genuine high-rejection TFC membrane.";
    this.updateImagePreview("assets/premium-ro-dispenser.jpg");

    document.getElementById("machine-crud-modal").classList.add("active");
  }

  openEditModal(id) {
    const m = this.getById(id);
    if (!m) return;

    document.getElementById("modal-title").innerText = "Edit Custom RO Machine";
    document.getElementById("machine-id").value = m.id;
    document.getElementById("m-form-name").value = m.name;
    document.getElementById("m-form-category").value = m.category;
    document.getElementById("m-form-capacity").value = m.capacity;
    document.getElementById("m-form-stages").value = m.stages;
    document.getElementById("m-form-ideal").value = m.idealFor;
    document.getElementById("m-form-badge").value = m.badge || "";
    document.getElementById("m-form-image-custom").value = m.image;
    document.getElementById("m-form-image-preset").value = m.image;
    document.getElementById("m-form-desc").value = m.description || "";
    this.updateImagePreview(m.image);

    document.getElementById("machine-crud-modal").classList.add("active");
  }

  closeModal() {
    const modal = document.getElementById("machine-crud-modal");
    if (modal) modal.classList.remove("active");
  }

  async handleFormSubmit() {
    const id = document.getElementById("machine-id").value;
    const name = document.getElementById("m-form-name").value.trim();
    const category = document.getElementById("m-form-category").value;
    const capacity = document.getElementById("m-form-capacity").value.trim();
    const stages = document.getElementById("m-form-stages").value.trim();
    const idealFor = document.getElementById("m-form-ideal").value.trim();
    const badge = document.getElementById("m-form-badge").value.trim();
    const image = document.getElementById("m-form-image-custom").value.trim() || "assets/premium-ro-dispenser.jpg";
    const description = document.getElementById("m-form-desc").value.trim();

    if (!name) {
      alert("Please enter machine name");
      return;
    }

    if (id) {
      const index = this.machines.findIndex(m => m.id === id);
      if (index !== -1) {
        this.machines[index] = {
          ...this.machines[index],
          name, category, capacity, stages, idealFor, badge, image, description
        };
        this.showToast(`Updated "${name}" successfully!`);
      }
    } else {
      const newMachine = {
        id: "cm-" + Date.now(),
        name, category, capacity, stages, idealFor, badge, image, description
      };
      this.machines.unshift(newMachine);
      this.showToast(`Added "${name}" successfully!`);
    }

    await this.persist();
    this.closeModal();
    this.renderCatalog();
  }

  async deleteMachine(id) {
    const m = this.getById(id);
    if (!m) return;

    if (confirm(`Are you sure you want to delete "${m.name}"?`)) {
      this.machines = this.machines.filter(item => item.id !== id);
      await this.persist();
      this.showToast(`Deleted "${m.name}"`);
      this.renderCatalog();
    }
  }

  showToast(msg) {
    let toast = document.getElementById("crud-toast");
    if (!toast) {
      toast = document.createElement("div");
      toast.id = "crud-toast";
      toast.className = "crud-toast";
      document.body.appendChild(toast);
    }
    toast.innerText = msg;
    toast.classList.add("show");
    setTimeout(() => {
      toast.classList.remove("show");
    }, 3000);
  }
}

// Global instance
let machineManager;
document.addEventListener("DOMContentLoaded", () => {
  if (document.getElementById("custom-machines-grid")) {
    machineManager = new MachineManager();
  }
});
