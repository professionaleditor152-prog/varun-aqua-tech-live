/**
 * VARUN AQUA TECH - Custom Machines CRUD & WhatsApp Order System
 * Founder & Proprietor: Selvam .V
 * Direct WhatsApp: +91 88380 55968
 */

const DEFAULT_MACHINES = [
  {
    id: "cm-domestic-alkaline",
    name: "Varun Aqua Alkaline Domestic RO",
    category: "Domestic",
    capacity: "15 LPH (12L Tank)",
    stages: "8-Stage RO + UV + UF + Alkaline + Copper",
    idealFor: "Borewell / High TDS Water (Up to 2500 TDS)",
    badge: "Free Installation Included",
    image: "assets/bele-water-purifier.jpg",
    description: "Multi-stage advanced RO purifier with high-rejection membrane and natural mineral cartridge for sweet, healthy drinking water in Dharmapuri homes."
  },
  {
    id: "cm-bluetech-commercial",
    name: "Bluetech Smart Commercial RO Unit",
    category: "Commercial",
    capacity: "50 LPH Continuous Flow",
    stages: "5-Stage High-Flow Commercial Filtration",
    idealFor: "Offices, Clinics, Schools & Commercial Kitchens",
    badge: "Heavy-Duty Booster Pump",
    image: "assets/bluetech-smart.jpg",
    description: "Commercial 50 LPH water purification unit with high-pressure diaphragm pump, dual pressure gauges, and durable wall/tabletop cabinet."
  },
  {
    id: "cm-countertop-dispenser",
    name: "Varun Pro Smart Countertop RO Dispenser",
    category: "Domestic",
    capacity: "15 LPH Instant Flow",
    stages: "Multi-Stage RO + UV-C + Micro-Carbon",
    idealFor: "Modern Modular Kitchens & Dining Tables",
    badge: "Instant Touch Dispense",
    image: "assets/premium-ro-dispenser.jpg",
    description: "Sleek tabletop water purifier with digital LED status display, child lock safety, and zero countertop clutter for modern apartments."
  },
  {
    id: "cm-industrial-plant",
    name: "Heavy-Duty Commercial Skid RO Plant",
    category: "Industrial",
    capacity: "250 to 5000 LPH (Custom Sized)",
    stages: "FRP Sand & Carbon Media + 4040/8040 RO Membranes",
    idealFor: "Schools, Hospitals, Hotels & Manufacturing Units",
    badge: "Custom Built by Selvam .V",
    image: "assets/commercial-plant.jpg",
    description: "Engineered on 304 stainless steel skids with industrial high-pressure multi-stage pumps, digital flow rotameters, and automated backwash valves."
  }
];

const PRESET_IMAGES = [
  { label: "Domestic Alkaline RO (Wall-Mounted)", path: "assets/bele-water-purifier.jpg" },
  { label: "Commercial 50 LPH Purifier Cabinet", path: "assets/bluetech-smart.jpg" },
  { label: "Smart Countertop RO Dispenser", path: "assets/premium-ro-dispenser.jpg" },
  { label: "Commercial RO Plant (50-5000 LPH)", path: "assets/commercial-plant.jpg" },
  { label: "Heavy-Duty Multi-Stage Skid RO", path: "assets/reverse-osmosis-system.jpg" },
  { label: "Genuine Spare Parts & Assembly Kits", path: "assets/ro-spare-parts.jpg" },
  { label: "Water Quality Testing & TDS Meter", path: "assets/water-tds-testing.jpg" },
  { label: "Showroom & Customer Experience Center", path: "assets/storefront-showroom.jpg" },
  { label: "RO Technician Doorstep Service & Filters", path: "assets/ro-service-technician-filters.jpg" },
  { label: "Compact Under-Sink Filtration Unit", path: "assets/benchtop-filtration.jpg" },
  { label: "Filter Cartridges & RO Membrane Pack", path: "assets/service-filters.jpg" },
  { label: "RO Booster Pump & Electronics Repair", path: "assets/service-repair.jpg" },
  { label: "Doorstep Wall Mounting Installation", path: "assets/service-installation.jpg" },
  { label: "Kitchen Counter Tap Installation", path: "assets/modern-kitchen-tap.jpg" }
];

const WHATSAPP_PHONE = "918838055968";

class MachineManager {
  constructor() {
    this.machines = [];
    this.currentFilter = "All";
    this.searchQuery = "";
    this.assetPrefix = this.detectAssetPrefix();
    this.activeTab = "upload";
    this.init();
  }

  detectAssetPrefix() {
    const path = window.location.pathname;
    if (path.includes("/custom-machines/") || path.includes("/about/") || path.includes("/ro-") || path.includes("/contact/") || path.includes("/dharmapuri/")) {
      return "../";
    }
    return "";
  }

  resolveImagePath(imgPath) {
    if (!imgPath) return this.assetPrefix + "assets/bele-water-purifier.jpg";
    if (imgPath.startsWith("http://") || imgPath.startsWith("https://") || imgPath.startsWith("data:") || imgPath.startsWith("blob:")) {
      return imgPath;
    }
    const clean = imgPath.replace(/^(\.\.\/|\.\/)/, "");
    return this.assetPrefix + clean;
  }

  async init() {
    await this.loadMachines();
    this.renderCatalog();
    this.setupEventListeners();
    this.renderPresetGrid();
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
        const parsed = JSON.parse(saved);
        if (Array.isArray(parsed) && parsed.length > 0) {
          this.machines = parsed;
          return;
        }
      } catch (e) {
        console.error("Failed to parse saved machines", e);
      }
    }

    // Default machines on first run
    this.machines = [...DEFAULT_MACHINES];
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
            Have a custom requirement for your home, commercial kitchen, clinic, or industry? Click below to add and publish custom machines with photos and direct WhatsApp ordering.
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

  renderPresetGrid() {
    const grid = document.getElementById("preset-photo-grid");
    if (!grid) return;

    grid.innerHTML = PRESET_IMAGES.map((p, idx) => {
      const resolved = this.resolveImagePath(p.path);
      return `
        <div class="preset-photo-item" data-path="${p.path}" onclick="machineManager.selectPreset('${p.path}', '${p.label}')" title="${p.label}">
          <div class="preset-photo-check">✓</div>
          <img src="${resolved}" alt="${p.label}" loading="lazy">
          <span>${p.label}</span>
        </div>
      `;
    }).join("");
  }

  selectPreset(path, label) {
    const customImgInput = document.getElementById("m-form-image-custom");
    if (customImgInput) customImgInput.value = path;

    document.querySelectorAll(".preset-photo-item").forEach(item => {
      item.classList.toggle("selected", item.getAttribute("data-path") === path);
    });

    this.updateImagePreview(path, label || path.split("/").pop(), "Gallery Preset");
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

    // Media Switcher Tabs
    document.querySelectorAll(".img-tab-btn").forEach(btn => {
      btn.addEventListener("click", () => {
        const tab = btn.getAttribute("data-tab");
        this.switchImageTab(tab);
      });
    });

    // Drag and Drop Upload Zone
    const dropzone = document.getElementById("media-dropzone");
    const fileInput = document.getElementById("m-form-image-file");

    if (dropzone && fileInput) {
      dropzone.addEventListener("click", (e) => {
        if (e.target !== fileInput) fileInput.click();
      });

      dropzone.addEventListener("dragover", (e) => {
        e.preventDefault();
        dropzone.classList.add("dragover");
      });

      dropzone.addEventListener("dragleave", () => {
        dropzone.classList.remove("dragover");
      });

      dropzone.addEventListener("drop", (e) => {
        e.preventDefault();
        dropzone.classList.remove("dragover");
        if (e.dataTransfer.files && e.dataTransfer.files[0]) {
          this.processImageFile(e.dataTransfer.files[0]);
        }
      });

      fileInput.addEventListener("change", (e) => {
        if (e.target.files && e.target.files[0]) {
          this.processImageFile(e.target.files[0]);
        }
      });
    }

    // Custom URL Input
    const customImgInput = document.getElementById("m-form-image-custom");
    if (customImgInput) {
      customImgInput.addEventListener("input", () => {
        const val = customImgInput.value.trim();
        if (val) {
          this.updateImagePreview(val, val.split("/").pop() || "Custom URL", "Web URL");
        }
      });
    }

    // Clear / Change button
    const clearBtn = document.getElementById("btn-clear-img");
    if (clearBtn) {
      clearBtn.addEventListener("click", () => {
        this.switchImageTab("upload");
        if (fileInput) fileInput.click();
      });
    }
  }

  switchImageTab(tabName) {
    this.activeTab = tabName;
    document.querySelectorAll(".img-tab-btn").forEach(btn => {
      btn.classList.toggle("active", btn.getAttribute("data-tab") === tabName);
    });

    const panels = {
      upload: document.getElementById("tab-content-upload"),
      presets: document.getElementById("tab-content-presets"),
      url: document.getElementById("tab-content-url")
    };

    Object.keys(panels).forEach(key => {
      if (panels[key]) {
        panels[key].style.display = key === tabName ? "block" : "none";
        panels[key].classList.toggle("active", key === tabName);
      }
    });
  }

  compressImage(file, maxWidth = 1200, maxHeight = 1200, quality = 0.85) {
    return new Promise((resolve, reject) => {
      const reader = new FileReader();
      reader.onload = (e) => {
        const img = new Image();
        img.onload = () => {
          let width = img.width;
          let height = img.height;
          if (width > maxWidth || height > maxHeight) {
            if (width / height > maxWidth / maxHeight) {
              height = Math.round((height * maxWidth) / width);
              width = maxWidth;
            } else {
              width = Math.round((width * maxHeight) / height);
              height = maxHeight;
            }
          }
          const canvas = document.createElement("canvas");
          canvas.width = width;
          canvas.height = height;
          const ctx = canvas.getContext("2d");
          ctx.drawImage(img, 0, 0, width, height);
          resolve(canvas.toDataURL("image/jpeg", quality));
        };
        img.onerror = reject;
        img.src = e.target.result;
      };
      reader.onerror = reject;
      reader.readAsDataURL(file);
    });
  }

  async processImageFile(file) {
    if (!file || !file.type.startsWith("image/")) {
      alert("Please select a valid image file (JPG, PNG, WEBP).");
      return;
    }

    const statusEl = document.getElementById("dropzone-status");
    if (statusEl) {
      statusEl.innerText = "⏳ Optimizing and uploading photo...";
      statusEl.style.display = "block";
    }

    try {
      const compressedDataUrl = await this.compressImage(file, 1200, 1200, 0.85);

      let finalPath = compressedDataUrl;
      try {
        const res = await fetch("/api/upload", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            filename: file.name,
            data: compressedDataUrl
          })
        });
        if (res.ok) {
          const json = await res.json();
          if (json.success && json.filePath) {
            finalPath = json.filePath;
          }
        }
      } catch (err) {
        console.log("Server upload unavailable, saved as optimized local image", err);
      }

      const customImgInput = document.getElementById("m-form-image-custom");
      if (customImgInput) customImgInput.value = finalPath;

      this.updateImagePreview(finalPath, file.name, "Uploaded Photo");

      if (statusEl) {
        statusEl.innerText = "✓ Photo successfully attached!";
        statusEl.style.color = "var(--color-success)";
      }
    } catch (err) {
      console.error("Error processing image file", err);
      if (statusEl) {
        statusEl.innerText = "Failed to process image. Please try again.";
        statusEl.style.color = "red";
      }
    }
  }

  updateImagePreview(url, filename = "", badgeText = "Selected Photo") {
    const preview = document.getElementById("m-form-image-preview");
    if (preview) {
      preview.src = this.resolveImagePath(url);
    }

    const badge = document.getElementById("preview-status-badge");
    if (badge) {
      badge.innerText = badgeText;
    }

    const nameEl = document.getElementById("preview-filename");
    if (nameEl) {
      if (filename) {
        nameEl.innerText = filename;
      } else {
        nameEl.innerText = url.startsWith("data:") ? "Uploaded local photo" : (url.split("/").pop() || "Image");
      }
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
    document.getElementById("m-form-image-custom").value = "assets/bele-water-purifier.jpg";
    document.getElementById("m-form-desc").value = "Custom-assembled by Selvam .V with high-grade booster pump and genuine high-rejection TFC membrane.";
    
    const statusEl = document.getElementById("dropzone-status");
    if (statusEl) statusEl.style.display = "none";

    this.switchImageTab("upload");
    this.updateImagePreview("assets/bele-water-purifier.jpg", "bele-water-purifier.jpg", "Default Model");

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
    document.getElementById("m-form-desc").value = m.description || "";

    const statusEl = document.getElementById("dropzone-status");
    if (statusEl) statusEl.style.display = "none";

    const isUploaded = m.image.includes("uploads") || m.image.startsWith("data:");
    const isPreset = PRESET_IMAGES.some(p => p.path === m.image);

    if (isPreset) {
      this.switchImageTab("presets");
      this.selectPreset(m.image, m.name);
    } else if (isUploaded) {
      this.switchImageTab("upload");
      this.updateImagePreview(m.image, "Attached Model Photo", "Uploaded Photo");
    } else {
      this.switchImageTab("url");
      this.updateImagePreview(m.image, m.image, "Custom URL");
    }

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
    const image = document.getElementById("m-form-image-custom").value.trim() || "assets/bele-water-purifier.jpg";
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
      this.showToast(`Added "${name}" with exact photo!`);
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
