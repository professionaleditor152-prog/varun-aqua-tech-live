/**
 * VARUN AQUA TECH - Protected Admin Portal Controller
 * Manages Cloud Firestore collection "products" with Firebase Authentication.
 * 
 * Direct WhatsApp: +91 88380 55968
 */

(function () {
  "use strict";

  // Preset images available in repository
  const PRESET_IMAGES = [
    { label: "Domestic Alkaline RO (Wall-Mounted)", path: "assets/bele-water-purifier.jpg" },
    { label: "Commercial 50 LPH Purifier Cabinet", path: "assets/bluetech-smart.jpg" },
    { label: "Smart Countertop RO Dispenser", path: "assets/premium-ro-dispenser.jpg" },
    { label: "Commercial RO Plant (50-5000 LPH)", path: "assets/commercial-plant.jpg" },
    { label: "Compact Under-Sink Filtration Unit", path: "assets/benchtop-filtration.jpg" },
    { label: "Genuine Spare Parts & Assembly Kits", path: "assets/ro-spare-parts.jpg" },
    { label: "Heavy-Duty Multi-Stage Skid RO", path: "assets/reverse-osmosis-system.jpg" },
    { label: "Water Quality Testing & TDS Meter", path: "assets/water-tds-testing.jpg" },
    { label: "Showroom & Customer Experience Center", path: "assets/storefront-showroom.jpg" },
    { label: "RO Technician Doorstep Service & Filters", path: "assets/ro-service-technician-filters.jpg" },
    { label: "Filter Cartridges & RO Membrane Pack", path: "assets/service-filters.jpg" },
    { label: "RO Booster Pump & Electronics Repair", path: "assets/service-repair.jpg" },
    { label: "Doorstep Wall Mounting Installation", path: "assets/service-installation.jpg" },
    { label: "Kitchen Counter Tap Installation", path: "assets/modern-kitchen-tap.jpg" }
  ];

  class AdminPortal {
    constructor() {
      this.currentUser = null;
      this.products = [];
      this.filterStatus = "all"; // all | active | inactive
      this.filterCategory = "all";
      this.searchQuery = "";
      this.editingId = null;

      this.init();
    }

    init() {
      this.bindAuthEvents();
      this.renderPresetPicker();
      this.listenAuthState();
    }

    /* ============================================================
       AUTHENTICATION STATE & ACTIONS
       ============================================================ */
    listenAuthState() {
      if (!window.auth) {
        this.showLoginError("Firebase Auth SDK not detected. Please verify configuration.");
        return;
      }

      window.auth.onAuthStateChanged(user => {
        this.currentUser = user;
        const authLoading = document.getElementById("admin-auth-loading");
        const loginSection = document.getElementById("admin-login-section");
        const dashSection = document.getElementById("admin-dashboard-section");

        if (authLoading) authLoading.style.display = "none";

        if (user) {
          // Authenticated as Admin
          if (loginSection) loginSection.style.display = "none";
          if (dashSection) dashSection.style.display = "block";

          const userEmailEl = document.getElementById("admin-user-email");
          if (userEmailEl) userEmailEl.textContent = user.email || "Admin";

          this.fetchProducts();
        } else {
          // Not logged in
          if (loginSection) loginSection.style.display = "block";
          if (dashSection) dashSection.style.display = "none";
        }
      });
    }

    bindAuthEvents() {
      // Login form submit
      const loginForm = document.getElementById("admin-login-form");
      if (loginForm) {
        loginForm.addEventListener("submit", async (e) => {
          e.preventDefault();
          const emailInput = document.getElementById("login-email");
          const passInput = document.getElementById("login-password");
          const btn = document.getElementById("btn-login-submit");

          const email = emailInput ? emailInput.value.trim() : "";
          const password = passInput ? passInput.value : "";

          if (!email || !password) {
            this.showLoginError("Please enter both email and password.");
            return;
          }

          if (btn) {
            btn.disabled = true;
            btn.innerHTML = `<span class="spinner-sm"></span> Signing In...`;
          }
          this.clearLoginError();

          try {
            await window.auth.signInWithEmailAndPassword(email, password);
            this.showToast("Signed in successfully!");
          } catch (err) {
            console.error("Sign-in error:", err);
            let msg = "Invalid credentials. Please verify your email and password.";
            if (err.code === "auth/user-not-found") {
              msg = "No user found with this email. Make sure your account exists in Firebase Authentication.";
            } else if (err.code === "auth/wrong-password" || err.code === "auth/invalid-credential") {
              msg = "Incorrect password or invalid credentials. Please try again.";
            } else if (err.code === "auth/too-many-requests") {
              msg = "Too many failed attempts. Please wait a moment or reset your password.";
            } else if (err.message) {
              msg = err.message;
            }
            this.showLoginError(msg);
          } finally {
            if (btn) {
              btn.disabled = false;
              btn.innerHTML = `Sign In to Dashboard &rarr;`;
            }
          }
        });
      }

      // Password reset helper
      const forgotBtn = document.getElementById("btn-forgot-password");
      if (forgotBtn) {
        forgotBtn.addEventListener("click", async (e) => {
          e.preventDefault();
          const emailInput = document.getElementById("login-email");
          const email = emailInput ? emailInput.value.trim() : "";
          if (!email) {
            alert("Please enter your admin email address in the field above first.");
            if (emailInput) emailInput.focus();
            return;
          }
          try {
            await window.auth.sendPasswordResetEmail(email);
            alert(`Password reset link sent to ${email}. Please check your inbox/spam folder.`);
          } catch (err) {
            alert("Failed to send reset email: " + (err.message || err.code));
          }
        });
      }

      // Sign out button
      const logoutBtn = document.getElementById("btn-admin-logout");
      if (logoutBtn) {
        logoutBtn.addEventListener("click", async () => {
          if (confirm("Are you sure you want to sign out from the Admin Portal?")) {
            await window.auth.signOut();
            this.showToast("Signed out successfully.");
          }
        });
      }

      // Seed Default Products Button
      const seedBtn = document.getElementById("btn-seed-firestore");
      if (seedBtn) {
        seedBtn.addEventListener("click", () => this.handleSeedDefaults());
      }

      // Refresh Button
      const refreshBtn = document.getElementById("btn-refresh-products");
      if (refreshBtn) {
        refreshBtn.addEventListener("click", () => this.fetchProducts());
      }

      // Add Product Button
      const addBtn = document.getElementById("btn-admin-add-product");
      if (addBtn) {
        addBtn.addEventListener("click", () => this.openProductModal());
      }

      // Search & Filters
      const searchInput = document.getElementById("admin-search-input");
      if (searchInput) {
        searchInput.addEventListener("input", (e) => {
          this.searchQuery = e.target.value.toLowerCase().trim();
          this.renderProductList();
        });
      }

      const statusFilter = document.getElementById("admin-filter-status");
      if (statusFilter) {
        statusFilter.addEventListener("change", (e) => {
          this.filterStatus = e.target.value;
          this.renderProductList();
        });
      }

      const catFilter = document.getElementById("admin-filter-cat");
      if (catFilter) {
        catFilter.addEventListener("change", (e) => {
          this.filterCategory = e.target.value;
          this.renderProductList();
        });
      }

      // Product Form Submit
      const prodForm = document.getElementById("admin-product-form");
      if (prodForm) {
        prodForm.addEventListener("submit", (e) => {
          e.preventDefault();
          this.handleProductSave();
        });
      }

      // Price auto-calculation for discount
      const origPriceInput = document.getElementById("prod-original-price");
      const salePriceInput = document.getElementById("prod-sale-price");
      const discInput = document.getElementById("prod-discount");

      const updateDiscountAuto = () => {
        const orig = parseFloat(origPriceInput.value) || 0;
        const sale = parseFloat(salePriceInput.value) || 0;
        if (orig > sale && orig > 0) {
          const pct = Math.round(((orig - sale) / orig) * 100);
          if (discInput && (!discInput.value || discInput.dataset.auto === "true")) {
            discInput.value = `${pct}% OFF`;
            discInput.dataset.auto = "true";
          }
        }
      };

      if (origPriceInput) origPriceInput.addEventListener("input", updateDiscountAuto);
      if (salePriceInput) salePriceInput.addEventListener("input", updateDiscountAuto);
      if (discInput) {
        discInput.addEventListener("input", () => {
          discInput.dataset.auto = "false";
        });
      }
    }

    showLoginError(msg) {
      const el = document.getElementById("login-error-alert");
      if (el) {
        el.textContent = msg;
        el.style.display = "block";
      }
    }

    clearLoginError() {
      const el = document.getElementById("login-error-alert");
      if (el) {
        el.textContent = "";
        el.style.display = "none";
      }
    }

    /* ============================================================
       FIRESTORE PRODUCTS CRUD
       ============================================================ */
    async fetchProducts() {
      const loadingEl = document.getElementById("products-loading");
      const emptyEl = document.getElementById("products-empty");
      const tableWrap = document.getElementById("products-table-wrap");

      if (loadingEl) loadingEl.style.display = "block";
      if (emptyEl) emptyEl.style.display = "none";
      if (tableWrap) tableWrap.style.display = "none";

      try {
        if (!window.db) throw new Error("Firestore not initialized");

        const snap = await window.db.collection("products").get();
        const list = [];
        snap.forEach(doc => {
          const d = doc.data();
          list.push({
            id: doc.id,
            name: d.name || "Untitled Product",
            description: d.description || "",
            image: d.image || "assets/bele-water-purifier.jpg",
            originalPrice: Number(d.originalPrice != null ? d.originalPrice : (d.mrp || 0)),
            salePrice: Number(d.salePrice != null ? d.salePrice : (d.price || 0)),
            discount: d.discount || "",
            ctaLink: d.ctaLink || d.buyLink || "",
            active: d.active !== false, // default true
            category: d.category || "Domestic",
            saleTitle: d.saleTitle || "",
            capacity: d.capacity || "15 LPH",
            stages: d.stages || "8-Stage RO",
            idealFor: d.idealFor || "Borewell Water",
            warranty: d.warranty || "1 Year Onsite Warranty",
            rating: d.rating || 4.9,
            reviewCount: d.reviewCount || 10,
            updatedAt: d.updatedAt || d.createdAt || null
          });
        });

        this.products = list;
        this.updateStats();
        this.renderProductList();
      } catch (err) {
        console.error("Error fetching products from Firestore:", err);
        this.showToast("Firestore query error: " + (err.message || "Failed to load products"));
      } finally {
        if (loadingEl) loadingEl.style.display = "none";
      }
    }

    updateStats() {
      const totalEl = document.getElementById("stat-total");
      const activeEl = document.getElementById("stat-active");
      const inactiveEl = document.getElementById("stat-inactive");

      const total = this.products.length;
      const active = this.products.filter(p => p.active).length;
      const inactive = total - active;

      if (totalEl) totalEl.textContent = total;
      if (activeEl) activeEl.textContent = active;
      if (inactiveEl) inactiveEl.textContent = inactive;
    }

    getFilteredProducts() {
      return this.products.filter(p => {
        // Status filter
        if (this.filterStatus === "active" && !p.active) return false;
        if (this.filterStatus === "inactive" && p.active) return false;

        // Category filter
        if (this.filterCategory !== "all" && p.category.toLowerCase() !== this.filterCategory.toLowerCase()) return false;

        // Search query
        if (this.searchQuery) {
          const q = this.searchQuery;
          const match = (p.name && p.name.toLowerCase().includes(q)) ||
            (p.category && p.category.toLowerCase().includes(q)) ||
            (p.capacity && p.capacity.toLowerCase().includes(q)) ||
            (p.saleTitle && p.saleTitle.toLowerCase().includes(q));
          if (!match) return false;
        }

        return true;
      });
    }

    renderProductList() {
      const tbody = document.getElementById("products-table-body");
      const emptyEl = document.getElementById("products-empty");
      const tableWrap = document.getElementById("products-table-wrap");

      const filtered = this.getFilteredProducts();

      if (this.products.length === 0) {
        if (emptyEl) emptyEl.style.display = "block";
        if (tableWrap) tableWrap.style.display = "none";
        return;
      }

      if (emptyEl) emptyEl.style.display = "none";
      if (tableWrap) tableWrap.style.display = "block";

      if (!tbody) return;

      if (filtered.length === 0) {
        tbody.innerHTML = `
          <tr>
            <td colspan="7" style="text-align: center; padding: 2.5rem; color: #64748B;">
              No products match the selected search or category filters.
            </td>
          </tr>
        `;
        return;
      }

      tbody.innerHTML = filtered.map(p => {
        const imgSrc = this.resolveImg(p.image);
        const origFormatted = p.originalPrice ? `₹${p.originalPrice.toLocaleString('en-IN')}` : "-";
        const saleFormatted = p.salePrice ? `₹${p.salePrice.toLocaleString('en-IN')}` : "-";
        const statusClass = p.active ? "badge-status-active" : "badge-status-inactive";
        const statusText = p.active ? "Active (Live)" : "Inactive (Hidden)";
        const toggleBtnLabel = p.active ? "Deactivate" : "Activate";

        return `
          <tr data-id="${p.id}">
            <td class="col-product">
              <div class="product-cell">
                <img src="${imgSrc}" alt="${p.name}" class="product-thumbnail" onerror="this.src='../assets/bele-water-purifier.jpg';">
                <div class="product-meta">
                  <div class="product-title-line">
                    <strong>${this.escapeHtml(p.name)}</strong>
                    <span class="cat-pill cat-${p.category.toLowerCase()}">${p.category}</span>
                  </div>
                  ${p.saleTitle ? `<div class="product-subtitle">${this.escapeHtml(p.saleTitle)}</div>` : ''}
                  <div class="product-specs-compact">${p.capacity || ''} • ${p.stages || ''}</div>
                </div>
              </div>
            </td>
            <td>
              <div class="pricing-cell">
                <span class="price-sale">${saleFormatted}</span>
                ${p.originalPrice > p.salePrice ? `<span class="price-orig"><del>${origFormatted}</del></span>` : ''}
              </div>
            </td>
            <td>
              ${p.discount ? `<span class="badge-discount">${this.escapeHtml(p.discount)}</span>` : '<span style="color:#94a3b8;">None</span>'}
            </td>
            <td>
              <div class="status-cell">
                <span class="badge-status ${statusClass}">${statusText}</span>
                <button type="button" class="btn-toggle-status" onclick="adminPortal.toggleActive('${p.id}', ${!p.active})" title="Toggle Active Status in Firestore">
                  ${toggleBtnLabel}
                </button>
              </div>
            </td>
            <td>
              ${p.ctaLink ? `<a href="${p.ctaLink}" target="_blank" rel="noopener" class="cta-link-preview" title="${p.ctaLink}">Custom Link &nearr;</a>` : '<span class="cta-default">WhatsApp Default</span>'}
            </td>
            <td class="col-actions">
              <div class="action-btn-group">
                <button type="button" class="btn-act btn-act-edit" onclick="adminPortal.editProduct('${p.id}')" title="Edit Product">✏️ Edit</button>
                <button type="button" class="btn-act btn-act-delete" onclick="adminPortal.deleteProduct('${p.id}', '${this.escapeHtml(p.name)}')" title="Delete from Firestore">🗑️</button>
              </div>
            </td>
          </tr>
        `;
      }).join("");
    }

    resolveImg(path) {
      if (!path) return "../assets/bele-water-purifier.jpg";
      if (path.startsWith("http://") || path.startsWith("https://") || path.startsWith("data:")) {
        return path;
      }
      const clean = path.replace(/^(\.\.\/|\.\/)/, "");
      return "../" + clean;
    }

    escapeHtml(text) {
      if (!text) return "";
      return String(text)
        .replace(/&/g, "&amp;")
        .replace(/</g, "&lt;")
        .replace(/>/g, "&gt;")
        .replace(/"/g, "&quot;")
        .replace(/'/g, "&#039;");
    }

    /* ============================================================
       MODAL: ADD & EDIT PRODUCT
       ============================================================ */
    openProductModal(prod = null) {
      this.editingId = prod ? prod.id : null;
      const modal = document.getElementById("admin-product-modal");
      const title = document.getElementById("modal-title");

      if (title) title.textContent = prod ? "Edit Product Details" : "Add New RO Machine / Product";

      // Fill or reset inputs
      document.getElementById("prod-name").value = prod ? prod.name : "";
      document.getElementById("prod-category").value = prod ? prod.category : "Domestic";
      document.getElementById("prod-sale-title").value = prod ? (prod.saleTitle || "") : "";
      document.getElementById("prod-original-price").value = prod ? (prod.originalPrice || "") : "";
      document.getElementById("prod-sale-price").value = prod ? (prod.salePrice || "") : "";
      document.getElementById("prod-discount").value = prod ? (prod.discount || "") : "";
      document.getElementById("prod-cta-link").value = prod ? (prod.ctaLink || "") : "";
      document.getElementById("prod-active-check").checked = prod ? prod.active : true;
      document.getElementById("prod-image-path").value = prod ? (prod.image || "") : "assets/bele-water-purifier.jpg";
      document.getElementById("prod-desc").value = prod ? (prod.description || "") : "";
      document.getElementById("prod-capacity").value = prod ? (prod.capacity || "") : "15 LPH (12L Tank)";
      document.getElementById("prod-stages").value = prod ? (prod.stages || "") : "8-Stage RO + UV + Alkaline + Active Copper";
      document.getElementById("prod-ideal").value = prod ? (prod.idealFor || "") : "Dharmapuri Borewell / Overhead Tank";
      document.getElementById("prod-warranty").value = prod ? (prod.warranty || "") : "1 Year Comprehensive Onsite Warranty";

      this.updateImagePreview(prod ? prod.image : "assets/bele-water-purifier.jpg");

      if (modal) modal.classList.add("active");
    }

    closeProductModal() {
      const modal = document.getElementById("admin-product-modal");
      if (modal) modal.classList.remove("active");
      this.editingId = null;
    }

    renderPresetPicker() {
      const select = document.getElementById("prod-preset-select");
      if (!select) return;

      select.innerHTML = `<option value="">-- Choose from Showroom Preset Photos --</option>` +
        PRESET_IMAGES.map(p => `<option value="${p.path}">${p.label}</option>`).join("");

      select.addEventListener("change", (e) => {
        if (e.target.value) {
          document.getElementById("prod-image-path").value = e.target.value;
          this.updateImagePreview(e.target.value);
        }
      });

      const manualInput = document.getElementById("prod-image-path");
      if (manualInput) {
        manualInput.addEventListener("input", (e) => {
          this.updateImagePreview(e.target.value);
        });
      }

      // Direct file upload to Data URL
      const fileInput = document.getElementById("prod-image-file");
      if (fileInput) {
        fileInput.addEventListener("change", async (e) => {
          if (e.target.files && e.target.files[0]) {
            const file = e.target.files[0];
            const dataUrl = await this.fileToDataUrl(file);
            document.getElementById("prod-image-path").value = dataUrl;
            this.updateImagePreview(dataUrl);
          }
        });
      }
    }

    fileToDataUrl(file) {
      return new Promise((resolve) => {
        const reader = new FileReader();
        reader.onload = (e) => {
          const img = new Image();
          img.onload = () => {
            const canvas = document.createElement("canvas");
            let w = img.width;
            let height = img.height;
            const max = 1200;
            if (w > max || height > max) {
              if (w > height) {
                height = Math.round((height * max) / w);
                w = max;
              } else {
                w = Math.round((w * max) / height);
                height = max;
              }
            }
            canvas.width = w;
            canvas.height = height;
            const ctx = canvas.getContext("2d");
            ctx.drawImage(img, 0, 0, w, height);
            resolve(canvas.toDataURL("image/jpeg", 0.85));
          };
          img.src = e.target.result;
        };
        reader.readAsDataURL(file);
      });
    }

    updateImagePreview(src) {
      const img = document.getElementById("modal-img-preview");
      if (img) {
        img.src = this.resolveImg(src);
      }
    }

    editProduct(id) {
      const p = this.products.find(item => item.id === id);
      if (p) this.openProductModal(p);
    }

    async toggleActive(id, newStatus) {
      if (!window.db) return;
      try {
        await window.db.collection("products").doc(id).update({
          active: newStatus,
          updatedAt: new Date().toISOString()
        });
        const item = this.products.find(p => p.id === id);
        if (item) item.active = newStatus;
        this.updateStats();
        this.renderProductList();
        this.showToast(`Product set to ${newStatus ? 'Active' : 'Inactive'}`);
      } catch (err) {
        console.error("Toggle active error:", err);
        alert("Failed to update status: " + (err.message || err));
      }
    }

    async deleteProduct(id, name) {
      if (!confirm(`Are you sure you want to delete "${name}" from Firestore?\n\nThis will remove it from the database permanently.`)) {
        return;
      }

      if (!window.db) return;
      try {
        await window.db.collection("products").doc(id).delete();
        this.products = this.products.filter(p => p.id !== id);
        this.updateStats();
        this.renderProductList();
        this.showToast(`Deleted "${name}" from Firestore`);
      } catch (err) {
        console.error("Delete error:", err);
        alert("Failed to delete product: " + (err.message || err));
      }
    }

    async handleProductSave() {
      const name = document.getElementById("prod-name").value.trim();
      const category = document.getElementById("prod-category").value;
      const saleTitle = document.getElementById("prod-sale-title").value.trim();
      const originalPrice = parseFloat(document.getElementById("prod-original-price").value) || 0;
      const salePrice = parseFloat(document.getElementById("prod-sale-price").value) || 0;
      const discount = document.getElementById("prod-discount").value.trim();
      const ctaLink = document.getElementById("prod-cta-link").value.trim();
      const active = document.getElementById("prod-active-check").checked;
      const image = document.getElementById("prod-image-path").value.trim() || "assets/bele-water-purifier.jpg";
      const description = document.getElementById("prod-desc").value.trim();
      const capacity = document.getElementById("prod-capacity").value.trim();
      const stages = document.getElementById("prod-stages").value.trim();
      const idealFor = document.getElementById("prod-ideal").value.trim();
      const warranty = document.getElementById("prod-warranty").value.trim();

      if (!name) {
        alert("Please enter a product name.");
        return;
      }
      if (salePrice <= 0) {
        alert("Please enter a valid sale price.");
        return;
      }

      const saveBtn = document.getElementById("btn-modal-save");
      if (saveBtn) {
        saveBtn.disabled = true;
        saveBtn.innerHTML = `<span class="spinner-sm"></span> Saving to Firestore...`;
      }

      const productPayload = {
        name,
        category,
        saleTitle,
        originalPrice,
        salePrice,
        price: salePrice,
        mrp: originalPrice,
        discount: discount || (originalPrice > salePrice ? `${Math.round(((originalPrice - salePrice) / originalPrice) * 100)}% OFF` : ""),
        ctaLink,
        active,
        image,
        description,
        capacity,
        stages,
        idealFor,
        warranty,
        rating: 4.9,
        reviewCount: 1,
        freeDelivery: true,
        freeInstall: true,
        updatedAt: new Date().toISOString()
      };

      try {
        if (!window.db) throw new Error("Firestore not initialized");

        if (this.editingId) {
          await window.db.collection("products").doc(this.editingId).set(productPayload, { merge: true });
          this.showToast(`Updated "${name}" in Firestore!`);
        } else {
          const docRef = await window.db.collection("products").add({
            ...productPayload,
            createdAt: new Date().toISOString()
          });
          this.showToast(`Added "${name}" to Firestore!`);
        }

        this.closeProductModal();
        await this.fetchProducts();
      } catch (err) {
        console.error("Save product error:", err);
        alert("Failed to save product to Firestore: " + (err.message || err));
      } finally {
        if (saveBtn) {
          saveBtn.disabled = false;
          saveBtn.innerHTML = `Save Product`;
        }
      }
    }

    async handleSeedDefaults() {
      if (!confirm("This will upload the 6 default showroom models into your Firestore 'products' collection.\n\nContinue?")) {
        return;
      }

      const seedBtn = document.getElementById("btn-seed-firestore");
      if (seedBtn) {
        seedBtn.disabled = true;
        seedBtn.innerHTML = `<span class="spinner-sm"></span> Seeding...`;
      }

      try {
        if (typeof window.seedProductsToFirestore === "function") {
          const count = await window.seedProductsToFirestore();
          this.showToast(`Successfully seeded ${count} products to Firestore!`);
          await this.fetchProducts();
        } else {
          alert("Seeding helper function not ready yet.");
        }
      } catch (err) {
        console.error("Seeding error:", err);
        alert("Seeding error: " + (err.message || err));
      } finally {
        if (seedBtn) {
          seedBtn.disabled = false;
          seedBtn.innerHTML = `📥 Seed 6 Models to Firestore`;
        }
      }
    }

    showToast(msg) {
      let toast = document.getElementById("admin-toast");
      if (!toast) {
        toast = document.createElement("div");
        toast.id = "admin-toast";
        toast.className = "admin-toast";
        document.body.appendChild(toast);
      }
      toast.textContent = msg;
      toast.classList.add("show");
      setTimeout(() => {
        toast.classList.remove("show");
      }, 3500);
    }
  }

  // Initialize on DOMContentLoaded
  document.addEventListener("DOMContentLoaded", () => {
    window.adminPortal = new AdminPortal();
  });
})();
