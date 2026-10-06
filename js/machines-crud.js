/**
 * VARUN AQUA TECH - Custom Machines CRUD & WhatsApp Order System
 * Founder & Proprietor: Mr. Varun
 * Direct WhatsApp: +91 88380 55968
 */

const DEFAULT_MACHINES = [
  {
    id: "cm-1",
    name: "Varun Pro Alkaline Copper RO",
    category: "Domestic",
    capacity: "15 LPH (12L Storage)",
    stages: "8-Stage (RO + UV + UF + Active Copper + Alkaline + TDS Controller)",
    idealFor: "Borewell & Hard Water up to 2500 TDS",
    price: "₹8,499",
    image: "assets/bele-water-purifier.jpg",
    badge: "Free Installation Included",
    description: "Custom-built domestic water purifier featuring Japanese alkaline mineral balls and pure copper infusion for immunity and health. Comes with free professional doorstep installation in Dharmapuri."
  },
  {
    id: "cm-2",
    name: "Varun Smart Multi-Stage Countertop RO",
    category: "Domestic",
    capacity: "18 LPH (10L Storage)",
    stages: "7 Stages (RO + UV + Mineralizer + Auto Purity Flush)",
    idealFor: "Apartments, Modular Kitchens & Homes",
    price: "₹9,999",
    image: "assets/benchtop-filtration.jpg",
    badge: "Free Installation Included",
    description: "Compact multi-stage countertop and under-sink system with direct flow indicator, food-grade transparent tank, and whisper-quiet booster pump."
  },
  {
    id: "cm-3",
    name: "Varun Commercial 50 LPH Direct Flow",
    category: "Commercial",
    capacity: "50 LPH Direct Flow",
    stages: "5 Stages (Dual 20\" Pre-Filter + Dual 100 GPD RO + Post Carbon)",
    idealFor: "Offices, Clinics, Cafes & Bakeries",
    price: "₹16,500",
    image: "assets/bluetech-smart.jpg",
    badge: "Commercial Grade",
    description: "Robust continuous-duty commercial purifier designed for workplaces and commercial kitchens across Dharmapuri requiring reliable high-volume drinking water."
  },
  {
    id: "cm-4",
    name: "Varun Heavy-Duty 250 LPH RO Plant",
    category: "Industrial",
    capacity: "250 LPH Continuous Flow",
    stages: "FRP Sand & Carbon Vessels + 4040 TFC Membrane + High Pressure Pump",
    idealFor: "Schools, Hospitals, Marriage Halls & Industries",
    price: "₹48,000",
    image: "assets/reverse-osmosis-system.jpg",
    badge: "Stainless Steel Skid",
    description: "Stainless steel SS 304 skid-mounted commercial RO plant with high-pressure vertical pump, rotameter flow meters, pressure gauges, and full 1-year AMC maintenance."
  }
];

const PRESET_IMAGES = [
  { label: "Domestic Alkaline RO (Wall-Mounted)", path: "assets/bele-water-purifier.jpg" },
  { label: "Compact Countertop / Under-Sink Unit", path: "assets/benchtop-filtration.jpg" },
  { label: "Commercial 50 LPH Purifier Unit", path: "assets/bluetech-smart.jpg" },
  { label: "Heavy-Duty 250-5000 LPH Commercial Plant", path: "assets/reverse-osmosis-system.jpg" },
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
    // If running in a subdirectory (e.g. /custom-machines/), assets need ../ prefix
    const path = window.location.pathname;
    if (path.includes("/custom-machines/") || path.includes("/about/") || path.includes("/ro-")) {
      return "../";
    }
    return "";
  }

  resolveImagePath(imgPath) {
    if (!imgPath) return this.assetPrefix + "assets/bele-water-purifier.jpg";
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
        if (Array.isArray(data) && data.length > 0) {
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

    this.machines = JSON.parse(JSON.stringify(DEFAULT_MACHINES));
    this.persist();
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
      // Offline or static mode
    }
  }

  getFilteredMachines() {
    return this.machines.filter(m => {
      const matchCategory = this.currentFilter === "All" || m.category.toLowerCase() === this.currentFilter.toLowerCase();
      const q = this.searchQuery.toLowerCase().trim();
      const matchSearch = !q || 
        m.name.toLowerCase().includes(q) || 
        m.capacity.toLowerCase().includes(q) || 
        m.stages.toLowerCase().includes(q) ||
        m.idealFor.toLowerCase().includes(q);
      return matchCategory && matchSearch;
    });
  }

  redirectToWhatsApp(machine) {
    const text = `Hello VARUN AQUA TECH (Mr. Varun),\n\nI am interested in your custom-built machine:\n• *Machine:* ${machine.name}\n• *Category:* ${machine.category}\n• *Capacity:* ${machine.capacity}\n• *Purification:* ${machine.stages}\n• *Price / Quote:* ${machine.price}\n\nPlease share availability, water test assessment, and free installation schedule for my location in Dharmapuri.`;
    const url = `https://wa.me/${WHATSAPP_PHONE}?text=${encodeURIComponent(text)}`;
    window.open(url, "_blank");
  }

  renderCatalog() {
    const container = document.getElementById("custom-machines-grid");
    if (!container) return;

    const filtered = this.getFilteredMachines();

    if (filtered.length === 0) {
      container.innerHTML = `
        <div class="crud-empty-state">
          <div class="crud-empty-icon">🔍</div>
          <h3>No Custom Machines Found</h3>
          <p>No machines matched "${this.searchQuery}" in category "${this.currentFilter}".</p>
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
            <img src="${imgSrc}" alt="${m.name} - VARUN AQUA TECH" loading="lazy" onerror="this.src='${this.resolveImagePath('assets/bele-water-purifier.jpg')}'">
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
              <div class="machine-price-wrap">
                <span class="price-label">Price / Starting:</span>
                <span class="price-val">${m.price}</span>
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

    // Reset Defaults button
    const resetBtn = document.getElementById("btn-reset-defaults");
    if (resetBtn) {
      resetBtn.addEventListener("click", () => this.handleResetDefaults());
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
    document.getElementById("m-form-stages").value = "8-Stage RO + UV + UF + Alkaline";
    document.getElementById("m-form-ideal").value = "Dharmapuri Borewell / Overhead Tank";
    document.getElementById("m-form-price").value = "₹8,499";
    document.getElementById("m-form-badge").value = "Free Installation Included";
    document.getElementById("m-form-image-custom").value = "assets/bele-water-purifier.jpg";
    document.getElementById("m-form-image-preset").value = "assets/bele-water-purifier.jpg";
    document.getElementById("m-form-desc").value = "Custom-assembled with high-grade booster pump and genuine TFC membrane.";
    this.updateImagePreview("assets/bele-water-purifier.jpg");

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
    document.getElementById("m-form-price").value = m.price;
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
    const price = document.getElementById("m-form-price").value.trim();
    const badge = document.getElementById("m-form-badge").value.trim();
    const image = document.getElementById("m-form-image-custom").value.trim() || "assets/bele-water-purifier.jpg";
    const description = document.getElementById("m-form-desc").value.trim();

    if (!name) {
      alert("Please enter machine name");
      return;
    }

    if (id) {
      // Update existing
      const index = this.machines.findIndex(m => m.id === id);
      if (index !== -1) {
        this.machines[index] = {
          ...this.machines[index],
          name, category, capacity, stages, idealFor, price, badge, image, description
        };
        this.showToast(`Updated "${name}" successfully!`);
      }
    } else {
      // Create new
      const newMachine = {
        id: "cm-" + Date.now(),
        name, category, capacity, stages, idealFor, price, badge, image, description
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

  async handleResetDefaults() {
    if (confirm("Reset custom machines to factory default models? Any custom machines added will be replaced with defaults.")) {
      this.machines = JSON.parse(JSON.stringify(DEFAULT_MACHINES));
      await this.persist();
      this.showToast("Reset to default machines");
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
