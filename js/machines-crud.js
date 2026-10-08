/**
 * VARUN AQUA TECH - Custom Machines E-Commerce Catalog & Shopping Cart System
 * Founder & Proprietor: Selvam .V
 * Direct WhatsApp: +91 88380 55968
 */

const DEFAULT_MACHINES = [
  {
    id: "cm-1791305258309",
    name: "PUROFLO",
    saleTitle: "Special Sale Edition • Custom Built",
    category: "Domestic",
    price: 11999,
    mrp: 16999,
    rating: 4.9,
    reviewCount: 1,
    capacity: "15 LPH (12L Tank)",
    stages: "8-Stage RO + UV + Alkaline + Active Copper",
    idealFor: "Dharmapuri Borewell / Overhead Tank (Up to 2500 TDS)",
    warranty: "1 Year Comprehensive Onsite Warranty",
    badge: "Festive Offer • Free Installation",
    freeDelivery: true,
    freeInstall: true,
    image: "assets/uploads/5_20261006_222950.png",
    description: "Custom-assembled by Selvam .V with high-grade booster pump and genuine high-rejection TFC membrane."
  },
  {
    id: "cm-domestic-alkaline",
    name: "Varun Pro Alkaline Copper RO Purifier",
    saleTitle: "Dharmapuri High-TDS Borewell Special • 8-Stage Mineralizer",
    category: "Domestic",
    price: 11999,
    mrp: 16999,
    rating: 4.9,
    reviewCount: 142,
    capacity: "15 LPH (12L Tank)",
    stages: "8-Stage RO + UV + UF + Alkaline + Active Copper",
    idealFor: "Borewell, Well & Kaveri Water (Up to 2500 TDS)",
    warranty: "1 Year Comprehensive Onsite Warranty",
    badge: "Bestseller • 29% OFF",
    freeDelivery: true,
    freeInstall: true,
    image: "assets/uploads/ChatGPT_Image_Oct_4__2026__09_32_18_AM_20261006_222914.png",
    description: "Specially engineered for Dharmapuri groundwater with 80 GPD high-rejection TFC membrane and natural mineral cartridge for sweet, alkaline water (pH 7.5 - 8.5)."
  },
  {
    id: "cm-bluetech-commercial",
    name: "BlueTech Smart Commercial RO Unit (50 LPH)",
    saleTitle: "Heavy-Duty Continuous Flow • Dual Pressure Gauge Cabinet",
    category: "Commercial",
    price: 24500,
    mrp: 32000,
    rating: 4.9,
    reviewCount: 88,
    capacity: "50 Litres/Hour Flow Rate",
    stages: "5-Stage High-Flow Commercial Filtration",
    idealFor: "Offices, Clinics, Schools, Bakeries & Commercial Kitchens",
    warranty: "1 Year Onsite Commercial Warranty",
    badge: "Commercial Grade • 23% OFF",
    freeDelivery: true,
    freeInstall: true,
    image: "assets/bluetech-smart.jpg",
    description: "Commercial 50 LPH water purification cabinet with dual pressure meters, high-pressure diaphragm pump, and wall/tabletop mounting frame for high daily consumption."
  },
  {
    id: "cm-countertop-dispenser",
    name: "Varun Touch Countertop Instant RO Dispenser",
    saleTitle: "Smart Modular Kitchen Edition • Touch Dispense",
    category: "Domestic",
    price: 14499,
    mrp: 19999,
    rating: 4.8,
    reviewCount: 64,
    capacity: "15 LPH Instant Flow",
    stages: "6-Stage Mineral RO + UV-C LED + Carbon Block",
    idealFor: "Modern Modular Kitchens, Dining Counters & Apartments",
    warranty: "1 Year Onsite Warranty + 2 Free PM Services",
    badge: "Instant Touch • 28% OFF",
    freeDelivery: true,
    freeInstall: true,
    image: "assets/premium-ro-dispenser.jpg",
    description: "Sleek tabletop water purifier with digital LED indicator, child lock dispense, instant pure water flow, and zero wall drilling required."
  },
  {
    id: "cm-industrial-plant",
    name: "Varun Heavy-Duty Skid RO Plant (250 LPH)",
    saleTitle: "Full 304 Stainless Steel Skid • Automated Backwash",
    category: "Industrial",
    price: 68000,
    mrp: 85000,
    rating: 5.0,
    reviewCount: 35,
    capacity: "250 to 500 LPH (Expandable)",
    stages: "FRP Sand & Carbon Media + 4040 TFC Membrane + CRI Pump",
    idealFor: "Hospitals, Hostels, Manufacturing Units & Commercial Buildings",
    warranty: "1 Year Comprehensive Industrial Warranty",
    badge: "SS 304 Skid • 20% OFF",
    freeDelivery: true,
    freeInstall: true,
    image: "assets/commercial-plant.jpg",
    description: "Custom fabricated by Selvam .V on 304 stainless steel frame with digital flow meters, automated multiport valves, high pressure pump, and low pressure safety cut-off."
  },
  {
    id: "cm-undersink-system",
    name: "Varun Compact Under-Sink Mineral RO System",
    saleTitle: "Hidden Under-Counter Design • Designer Gooseneck Faucet",
    category: "Domestic",
    price: 13200,
    mrp: 17500,
    rating: 4.8,
    reviewCount: 52,
    capacity: "15 LPH (8L Hydrostatic Tank)",
    stages: "7-Stage RO + Mineralizer + Post-Carbon",
    idealFor: "Island Kitchens, Quartz Countertops & Modular Cabinets",
    warranty: "1 Year Comprehensive Onsite Warranty",
    badge: "Concealed Fit • 25% OFF",
    freeDelivery: true,
    freeInstall: true,
    image: "assets/benchtop-filtration.jpg",
    description: "Concealed under-counter filtration system that keeps kitchen platforms 100% clean, delivering pure mineral water through a sleek chrome gooseneck faucet."
  }
];

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

const WHATSAPP_PHONE = "918838055968";

class MachineManager {
  constructor() {
    this.machines = [];
    this.cart = [];
    this.currentFilter = "All";
    this.searchQuery = "";
    this.assetPrefix = this.detectAssetPrefix();
    this.activeTab = "upload";
    this.init();
  }

  detectAssetPrefix() {
    const path = window.location.pathname;
    const cleanPath = path.replace(/^\/|\/$/g, "");
    if (!cleanPath || cleanPath === "index.html") {
      return "";
    }
    if (cleanPath.includes("/") || cleanPath.startsWith("custom-machines") || cleanPath.startsWith("about") || cleanPath.startsWith("ro-") || cleanPath.startsWith("contact") || cleanPath.startsWith("dharmapuri") || cleanPath.startsWith("commercial-ro")) {
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
    this.loadCart();
    await this.loadMachines();
    this.renderCatalog();
    this.setupEventListeners();
    this.renderPresetGrid();
    this.updateCartUI();
  }

  async loadMachines() {
    let loaded = null;

    // 1. Retrieve active products from Cloud Firestore collection "products"
    if (window.db) {
      try {
        const snapshot = await window.db.collection("products").get();
        if (!snapshot.empty) {
          const firestoreProducts = [];
          snapshot.forEach(doc => {
            const d = doc.data();
            // Requirement: Public landing page displays active products
            if (d.active !== false) {
              const salePrice = Number(d.salePrice != null ? d.salePrice : (d.price != null ? d.price : 11999));
              const origPrice = Number(d.originalPrice != null ? d.originalPrice : (d.mrp != null ? d.mrp : Math.round(salePrice * 1.35)));
              const discountText = d.discount || (origPrice > salePrice ? `${Math.round(((origPrice - salePrice) / origPrice) * 100)}% OFF` : "");

              firestoreProducts.push({
                id: doc.id,
                name: d.name || "Custom RO Purifier",
                saleTitle: d.saleTitle || "",
                category: d.category || "Domestic",
                price: salePrice,
                salePrice: salePrice,
                mrp: origPrice,
                originalPrice: origPrice,
                discount: discountText,
                badge: d.badge || discountText || "Special Offer",
                rating: d.rating || 4.9,
                reviewCount: d.reviewCount || 1,
                capacity: d.capacity || "15 LPH (12L Tank)",
                stages: d.stages || "8-Stage RO + UV + Alkaline + Active Copper",
                idealFor: d.idealFor || "Dharmapuri Groundwater (Up to 2500 TDS)",
                warranty: d.warranty || "1 Year Comprehensive Onsite Warranty",
                freeDelivery: d.freeDelivery !== false,
                freeInstall: d.freeInstall !== false,
                image: d.image || "assets/bele-water-purifier.jpg",
                description: d.description || "",
                ctaLink: d.ctaLink || d.buyLink || "",
                buyLink: d.ctaLink || d.buyLink || "",
                active: true,
                createdAt: d.createdAt || null
              });
            }
          });

          if (firestoreProducts.length > 0) {
            loaded = firestoreProducts;
            console.log(`[Firestore] Successfully retrieved ${loaded.length} active products from 'products' collection.`);
          }
        }
      } catch (firestoreErr) {
        console.warn("[Firestore] Could not retrieve products from Firestore (using fallback):", firestoreErr);
      }
    }

    // 2. Fallback to API / static data / localStorage if Firestore is empty or offline
    if (!loaded) {
      try {
        let res = await fetch("/api/machines", { cache: "no-store" });
        if (!res.ok) {
          res = await fetch(this.resolveImagePath("data/machines.json"), { cache: "no-store" });
        }
        if (res.ok) {
          const data = await res.json();
          if (Array.isArray(data) && data.length > 0) {
            loaded = data;
          }
        }
      } catch (e) {
        console.log("Using localStorage fallback for machines:", e);
      }
    }

    if (!loaded) {
      const saved = localStorage.getItem("varun_custom_machines");
      if (saved) {
        try {
          const parsed = JSON.parse(saved);
          if (Array.isArray(parsed) && parsed.length > 0) {
            loaded = parsed;
          }
        } catch (e) {
          console.error("Failed to parse saved machines", e);
        }
      }
    }

    // If loaded data is missing price or empty, upgrade with DEFAULT_MACHINES
    if (!loaded || loaded.length === 0 || !loaded[0].price) {
      loaded = [...DEFAULT_MACHINES];
    } else {
      loaded = loaded.filter(m => m.id !== "cm-spare-parts-kit");
    }

    this.machines = loaded;
    this.persistLocalOnly();
  }

  persistLocalOnly() {
    try {
      localStorage.setItem("varun_custom_machines", JSON.stringify(this.machines));
    } catch (e) {}
  }

  async persist() {
    this.persistLocalOnly();
    try {
      await fetch("/api/machines", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(this.machines)
      });
    } catch (e) {
      // Offline fallback
    }
  }

  /* ============================================================
     SHOPPING CART SYSTEM
     ============================================================ */
  loadCart() {
    const saved = localStorage.getItem("varun_cart");
    if (saved) {
      try {
        this.cart = JSON.parse(saved);
      } catch (e) {
        this.cart = [];
      }
    } else {
      this.cart = [];
    }
  }

  persistCart() {
    localStorage.setItem("varun_cart", JSON.stringify(this.cart));
    this.updateCartUI();
  }

  addToCart(machineId) {
    const machine = this.getById(machineId);
    if (!machine) return;

    const existing = this.cart.find(item => item.id === machineId);
    if (existing) {
      existing.qty = (existing.qty || 1) + 1;
    } else {
      this.cart.push({
        id: machine.id,
        name: machine.name,
        price: machine.price || 11999,
        category: machine.category,
        image: machine.image,
        qty: 1
      });
    }

    this.persistCart();
    this.showToast(`🛒 "${machine.name}" added to cart!`);
    this.openCartDrawer();
  }

  removeFromCart(machineId) {
    this.cart = this.cart.filter(item => item.id !== machineId);
    this.persistCart();
  }

  updateCartQty(machineId, delta) {
    const item = this.cart.find(i => i.id === machineId);
    if (!item) return;

    item.qty = (item.qty || 1) + delta;
    if (item.qty <= 0) {
      this.removeFromCart(machineId);
    } else {
      this.persistCart();
    }
  }

  clearCart() {
    this.cart = [];
    this.persistCart();
  }

  getCartCount() {
    return this.cart.reduce((sum, item) => sum + (item.qty || 1), 0);
  }

  getCartTotal() {
    return this.cart.reduce((sum, item) => sum + ((item.price || 0) * (item.qty || 1)), 0);
  }

  updateCartUI() {
    const count = this.getCartCount();
    const total = this.getCartTotal();

    // Floating button badge
    const badge = document.getElementById("cart-badge-count");
    if (badge) badge.innerText = count;

    // Header nav cart count
    const navCount = document.getElementById("nav-cart-count");
    if (navCount) navCount.innerText = count;

    // Header cart badge (Mobile & Desktop Header icon)
    const headerCartBadge = document.getElementById("header-cart-badge");
    if (headerCartBadge) {
      headerCartBadge.innerText = count;
      headerCartBadge.style.display = count > 0 ? "inline-flex" : "none";
    }

    // Sticky Mobile Cart Bar (visible when cart has items)
    const stickyCartBar = document.getElementById("sticky-mobile-cart-bar");
    if (stickyCartBar) {
      if (count > 0) {
        stickyCartBar.style.display = "flex";
        const itemsEl = document.getElementById("sticky-cart-items-text");
        if (itemsEl) itemsEl.innerText = `${count} ${count === 1 ? 'Item' : 'Items'}`;
        const priceEl = document.getElementById("sticky-cart-price-text");
        if (priceEl) priceEl.innerText = `₹${total.toLocaleString('en-IN')}`;
      } else {
        stickyCartBar.style.display = "none";
      }
    }

    // Drawer header count
    const drawerCount = document.getElementById("cart-drawer-count");
    if (drawerCount) drawerCount.innerText = `${count} ${count === 1 ? 'item' : 'items'}`;

    // Subtotal and Total
    const subtotalEl = document.getElementById("cart-subtotal-val");
    if (subtotalEl) subtotalEl.innerText = `₹${total.toLocaleString('en-IN')}`;

    const totalEl = document.getElementById("cart-total-val");
    if (totalEl) totalEl.innerText = `₹${total.toLocaleString('en-IN')}`;

    const checkoutBtn = document.getElementById("btn-checkout-whatsapp");
    if (checkoutBtn) {
      checkoutBtn.innerHTML = `<span>💬</span> Order Cart on WhatsApp (${total > 0 ? '₹' + total.toLocaleString('en-IN') : 'Empty'})`;
      checkoutBtn.disabled = count === 0;
    }

    this.renderCartItems();
  }

  renderCartItems() {
    const container = document.getElementById("cart-items-container");
    if (!container) return;

    if (this.cart.length === 0) {
      container.innerHTML = `
        <div class="cart-empty-state">
          <span class="cart-empty-icon">🛒</span>
          <h4 style="color: var(--color-navy); margin-bottom: 0.35rem; font-size: 1.15rem;">Your Cart is Empty</h4>
          <p style="color: var(--color-text-muted); font-size: 0.88rem; margin-bottom: 1.25rem;">
            Browse our custom-built RO water purifiers and add them to your cart for doorstep delivery in Dharmapuri.
          </p>
          <button class="btn btn-secondary btn-sm" onclick="machineManager.closeCartDrawer()">Browse Machines</button>
        </div>
      `;
      return;
    }

    container.innerHTML = this.cart.map(item => {
      const imgSrc = this.resolveImagePath(item.image);
      const lineTotal = (item.price || 0) * (item.qty || 1);

      return `
        <div class="cart-item">
          <div class="cart-item-thumb">
            <img src="${imgSrc}" alt="${item.name}" onerror="this.src='${this.resolveImagePath('assets/bele-water-purifier.jpg')}'">
          </div>
          <div class="cart-item-info">
            <h4 class="cart-item-name">${item.name}</h4>
            <div class="cart-item-price">₹${(item.price || 0).toLocaleString('en-IN')}</div>
            <div class="cart-item-qty-row">
              <div class="cart-qty-ctrls">
                <button type="button" class="cart-qty-btn" onclick="machineManager.updateCartQty('${item.id}', -1)">−</button>
                <span class="cart-qty-num">${item.qty || 1}</span>
                <button type="button" class="cart-qty-btn" onclick="machineManager.updateCartQty('${item.id}', 1)">+</button>
              </div>
              <button type="button" class="cart-item-remove-btn" onclick="machineManager.removeFromCart('${item.id}')">Remove</button>
            </div>
          </div>
        </div>
      `;
    }).join("");
  }

  openCartDrawer() {
    const overlay = document.getElementById("cart-drawer-overlay");
    if (overlay) overlay.classList.add("active");
  }

  closeCartDrawer() {
    const overlay = document.getElementById("cart-drawer-overlay");
    if (overlay) overlay.classList.remove("active");
  }

  checkoutCartWhatsApp() {
    if (this.cart.length === 0) {
      alert("Your cart is empty! Please add a custom RO machine first.");
      return;
    }

    const nameInput = document.getElementById("cart-customer-name");
    const areaInput = document.getElementById("cart-customer-area");
    const customerName = nameInput ? nameInput.value.trim() : "";
    const customerArea = areaInput ? areaInput.value.trim() : "";

    const itemsSummary = this.cart.map((item, idx) => {
      const total = (item.price || 0) * (item.qty || 1);
      return `${idx + 1}. *${item.name}* (Qty: ${item.qty}) - ₹${total.toLocaleString('en-IN')}`;
    }).join("\n");

    const grandTotal = this.getCartTotal().toLocaleString('en-IN');

    let text = `🛒 *NEW RO MACHINE ORDER - VARUN AQUA TECH*\n`;
    text += `Founder: Selvam .V | Dharmapuri\n\n`;
    if (customerName) text += `👤 *Customer Name:* ${customerName}\n`;
    if (customerArea) text += `📍 *Delivery Location:* ${customerArea}\n`;
    text += `\n*SELECTED MACHINES:*\n${itemsSummary}\n\n`;
    text += `💰 *Total Amount:* ₹${grandTotal}\n`;
    text += `🚚 *Delivery & Installation:* FREE in Dharmapuri\n`;
    text += `🛡️ *Warranty:* 1 Year Comprehensive Onsite\n\n`;
    text += `Please confirm availability and schedule my doorstep installation!`;

    const url = `https://wa.me/${WHATSAPP_PHONE}?text=${encodeURIComponent(text)}`;
    window.open(url, "_blank");
  }

  /* ============================================================
     CATALOG & FILTERING
     ============================================================ */
  getFilteredMachines() {
    return this.machines.filter(m => {
      const matchCategory = this.currentFilter === "All" || m.category.toLowerCase() === this.currentFilter.toLowerCase();
      const q = this.searchQuery.toLowerCase().trim();
      const matchSearch = !q || 
        (m.name && m.name.toLowerCase().includes(q)) || 
        (m.saleTitle && m.saleTitle.toLowerCase().includes(q)) ||
        (m.capacity && m.capacity.toLowerCase().includes(q)) || 
        (m.stages && m.stages.toLowerCase().includes(q)) ||
        (m.idealFor && m.idealFor.toLowerCase().includes(q));
      return matchCategory && matchSearch;
    });
  }

  redirectToWhatsApp(machine) {
    if (!machine) return;
    const priceText = machine.price ? `₹${machine.price.toLocaleString('en-IN')}` : "Contact for Best Quote";
    const mrpText = machine.mrp ? ` (MRP: ₹${machine.mrp.toLocaleString('en-IN')})` : "";
    const text = `Hello VARUN AQUA TECH (Founder: Selvam .V),\n\nI would like to order / inquire about this custom-built machine:\n• *Model:* ${machine.name}\n• *Offer Price:* ${priceText}${mrpText}\n• *Category:* ${machine.category} RO\n• *Capacity:* ${machine.capacity}\n• *Filtration Stages:* ${machine.stages}\n• *Ideal For:* ${machine.idealFor}\n• *Warranty:* ${machine.warranty || '1 Year Onsite'}\n\nPlease share availability, payment options, and doorstep delivery schedule in Dharmapuri.`;
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
            Have a custom requirement for your home, commercial kitchen, clinic, or industry? Click below to add and publish custom machines with photos, prices, and e-commerce cart.
          </p>
          <div style="display: flex; gap: 0.75rem; justify-content: center; flex-wrap: wrap;">
            <button class="btn btn-primary btn-md" onclick="machineManager.openAddModal()">＋ Add Custom Machine</button>
            <button class="btn btn-secondary btn-md" onclick="machineManager.resetToDefaults()">🔄 Restore Recommended Catalog</button>
          </div>
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
      const price = m.price || 11999;
      const mrp = m.mrp || Math.round(price * 1.35);
      const savings = mrp - price;
      const discountPercent = Math.max(10, Math.round((savings / mrp) * 100));
      const badgeText = m.badge || `${discountPercent}% OFF`;

      return `
        <article class="custom-machine-card" data-id="${m.id}" onclick="machineManager.openDetailSheet('${m.id}')" title="Tap to view full specifications, order, or customize">
          <div class="machine-card-image-wrap">
            <span class="machine-card-badge">${badgeText}</span>
            <img src="${imgSrc}" alt="${m.name} - VARUN AQUA TECH" loading="lazy" onerror="this.src='${this.resolveImagePath('assets/bele-water-purifier.jpg')}';">
          </div>

          <div class="machine-card-body">
            <div class="machine-card-meta">
              <span class="machine-card-cat">${m.category}</span>
              <span class="machine-card-rating">★ ${m.rating || '4.9'}</span>
            </div>

            <h3 class="machine-card-title">${m.name}</h3>

            <div class="machine-card-price-row">
              <span class="machine-card-price">₹${price.toLocaleString('en-IN')}</span>
              <span class="machine-card-mrp"><del>₹${mrp.toLocaleString('en-IN')}</del></span>
            </div>

            <div class="machine-card-footer-tap">
              <span>View Specs &amp; Order</span>
              <span class="tap-arrow">&rarr;</span>
            </div>
          </div>
        </article>
      `;
    }).join("");
  }

  openDetailSheet(machineId) {
    const m = this.getById(machineId);
    if (!m) return;

    this.activeDetailId = machineId;
    const sheet = document.getElementById("product-detail-sheet");
    const content = document.getElementById("sheet-body-content");
    const catPill = document.getElementById("sheet-category-pill");
    if (!sheet || !content) return;

    const imgSrc = this.resolveImagePath(m.image);
    const price = m.price || 11999;
    const mrp = m.mrp || Math.round(price * 1.35);
    const savings = mrp - price;
    const discountPercent = Math.max(10, Math.round((savings / mrp) * 100));
    const badgeText = m.badge || `${discountPercent}% OFF`;

    if (catPill) catPill.innerText = `${m.category} RO Purifier`;

    content.innerHTML = `
      <div class="sheet-image-hero">
        <span class="sheet-offer-badge">${badgeText}</span>
        <img src="${imgSrc}" alt="${m.name}" onerror="this.src='${this.resolveImagePath('assets/bele-water-purifier.jpg')}';">
      </div>

      <div class="sheet-info-block">
        <h2 class="sheet-title" id="sheet-product-title">${m.name}</h2>
        ${m.saleTitle ? `<div class="sheet-tagline">${m.saleTitle}</div>` : ''}

        <div class="sheet-rating-row">
          <span class="sheet-stars">★★★★★</span>
          <span class="sheet-rating-num">${m.rating || '4.9'}</span>
          <span class="sheet-reviews">(${m.reviewCount || '140'} reviews)</span>
          <span class="sheet-verified-badge">✓ Verified Genuine</span>
        </div>

        <!-- Price Box -->
        <div class="sheet-price-card">
          <div class="sheet-price-row">
            <span class="sheet-deal-price">₹${price.toLocaleString('en-IN')}</span>
            <span class="sheet-mrp"><del>₹${mrp.toLocaleString('en-IN')}</del></span>
            <span class="sheet-save-tag">Save ₹${savings.toLocaleString('en-IN')} (${discountPercent}% OFF)</span>
          </div>
          <div class="sheet-perks-row">
            <span>🚚 FREE Delivery</span>
            <span>•</span>
            <span>🔧 FREE Installation in Dharmapuri</span>
          </div>
        </div>

        <!-- Technical Specifications -->
        <div class="sheet-specs-section">
          <h4 class="sheet-section-heading">Technical Specifications</h4>
          <div class="sheet-specs-grid">
            <div class="sheet-spec-item">
              <span class="sheet-spec-icon">⚡</span>
              <div>
                <div class="sheet-spec-label">Capacity / Flow</div>
                <div class="sheet-spec-val">${m.capacity}</div>
              </div>
            </div>
            <div class="sheet-spec-item">
              <span class="sheet-spec-icon">🛡️</span>
              <div>
                <div class="sheet-spec-label">Purification Stages</div>
                <div class="sheet-spec-val">${m.stages}</div>
              </div>
            </div>
            <div class="sheet-spec-item">
              <span class="sheet-spec-icon">💧</span>
              <div>
                <div class="sheet-spec-label">Ideal Water Source</div>
                <div class="sheet-spec-val">${m.idealFor}</div>
              </div>
            </div>
            <div class="sheet-spec-item">
              <span class="sheet-spec-icon">🏅</span>
              <div>
                <div class="sheet-spec-label">Warranty Coverage</div>
                <div class="sheet-spec-val">${m.warranty || '1 Year Comprehensive Onsite Warranty'}</div>
              </div>
            </div>
          </div>
        </div>

        <!-- Description -->
        <div class="sheet-desc-section">
          <h4 class="sheet-section-heading">Product Overview</h4>
          <p class="sheet-desc-text">${m.description || 'Custom assembled by Selvam .V with heavy-duty components specifically calibrated for Dharmapuri groundwater.'}</p>
        </div>

        <!-- Admin Actions (Edit/Delete) -->
        <div class="sheet-admin-bar">
          <button type="button" class="btn-sheet-edit" onclick="machineManager.closeDetailSheet(); machineManager.openEditModal('${m.id}')">✏️ Edit Details</button>
          <button type="button" class="btn-sheet-delete" onclick="machineManager.closeDetailSheet(); machineManager.deleteMachine('${m.id}')">🗑️ Delete Model</button>
        </div>
      </div>
    `;

    // Hook up bottom action buttons
    const addCartBtn = document.getElementById("sheet-btn-add-cart");
    if (addCartBtn) {
      addCartBtn.onclick = () => {
        this.addToCart(m.id);
        this.closeDetailSheet();
      };
    }

    const waBtn = document.getElementById("sheet-btn-whatsapp");
    if (waBtn) {
      if (m.ctaLink && m.ctaLink.trim() && m.ctaLink !== "#") {
        waBtn.innerHTML = `<span>⚡</span> Buy / Order Now`;
        waBtn.onclick = () => {
          window.open(m.ctaLink, "_blank");
        };
      } else {
        waBtn.innerHTML = `<span>💬</span> WhatsApp Order`;
        waBtn.onclick = () => {
          this.redirectToWhatsApp(m);
        };
      }
    }

    sheet.classList.add("active");
    document.body.classList.add("sheet-open");
  }

  closeDetailSheet() {
    const sheet = document.getElementById("product-detail-sheet");
    if (sheet) sheet.classList.remove("active");
    document.body.classList.remove("sheet-open");
  }

  resetToDefaults() {
    this.machines = [...DEFAULT_MACHINES];
    this.persist();
    this.renderCatalog();
    this.showToast("Catalog restored with recommended models!");
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

    grid.innerHTML = PRESET_IMAGES.map((p) => {
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

    // Cart Drawer triggers
    const floatingCart = document.getElementById("floating-cart-btn");
    if (floatingCart) {
      floatingCart.addEventListener("click", () => this.openCartDrawer());
    }

    const navCartBtn = document.getElementById("btn-view-cart-nav");
    if (navCartBtn) {
      navCartBtn.addEventListener("click", () => this.openCartDrawer());
    }

    const cartCloseBtn = document.getElementById("cart-close-btn");
    if (cartCloseBtn) {
      cartCloseBtn.addEventListener("click", () => this.closeCartDrawer());
    }

    const cartOverlay = document.getElementById("cart-drawer-overlay");
    if (cartOverlay) {
      cartOverlay.addEventListener("click", (e) => {
        if (e.target === cartOverlay) this.closeCartDrawer();
      });
    }

    // Checkout WhatsApp button
    const checkoutBtn = document.getElementById("btn-checkout-whatsapp");
    if (checkoutBtn) {
      checkoutBtn.addEventListener("click", () => this.checkoutCartWhatsApp());
    }

    // Clear cart button
    const clearCartBtn = document.getElementById("btn-clear-cart");
    if (clearCartBtn) {
      clearCartBtn.addEventListener("click", () => {
        if (confirm("Are you sure you want to clear your cart?")) {
          this.clearCart();
        }
      });
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

    // Product Detail Sheet close buttons and backdrop click
    const sheetCloseBtn = document.getElementById("sheet-close-btn");
    if (sheetCloseBtn) {
      sheetCloseBtn.addEventListener("click", () => this.closeDetailSheet());
    }

    const sheetOverlay = document.getElementById("product-detail-sheet");
    if (sheetOverlay) {
      sheetOverlay.addEventListener("click", (e) => {
        if (e.target === sheetOverlay) this.closeDetailSheet();
      });
    }

    // Header Cart Button
    const headerCartBtn = document.getElementById("btn-header-cart");
    if (headerCartBtn) {
      headerCartBtn.addEventListener("click", () => this.openCartDrawer());
    }

    document.addEventListener("keydown", (e) => {
      if (e.key === "Escape") {
        this.closeModal();
        this.closeCartDrawer();
        this.closeDetailSheet();
      }
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
    document.getElementById("modal-title").innerText = "Add New Custom RO Machine (Owner Mode)";
    document.getElementById("machine-id").value = "";
    document.getElementById("m-form-name").value = "";
    document.getElementById("m-form-sale-title").value = "Special Sale Edition • Custom Built";
    document.getElementById("m-form-category").value = "Domestic";
    document.getElementById("m-form-price").value = "11999";
    document.getElementById("m-form-mrp").value = "16999";
    document.getElementById("m-form-capacity").value = "15 LPH (12L Tank)";
    document.getElementById("m-form-stages").value = "8-Stage RO + UV + Alkaline + Active Copper";
    document.getElementById("m-form-ideal").value = "Dharmapuri Borewell / Overhead Tank (Up to 2500 TDS)";
    document.getElementById("m-form-warranty").value = "1 Year Comprehensive Onsite Warranty";
    document.getElementById("m-form-badge").value = "Festive Offer • Free Installation";
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

    document.getElementById("modal-title").innerText = "Edit RO Machine Details & Price";
    document.getElementById("machine-id").value = m.id;
    document.getElementById("m-form-name").value = m.name;
    document.getElementById("m-form-sale-title").value = m.saleTitle || "";
    document.getElementById("m-form-category").value = m.category;
    document.getElementById("m-form-price").value = m.price || 11999;
    document.getElementById("m-form-mrp").value = m.mrp || 16999;
    document.getElementById("m-form-capacity").value = m.capacity;
    document.getElementById("m-form-stages").value = m.stages;
    document.getElementById("m-form-ideal").value = m.idealFor;
    document.getElementById("m-form-warranty").value = m.warranty || "1 Year Comprehensive Onsite Warranty";
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
    const saleTitle = document.getElementById("m-form-sale-title").value.trim();
    const category = document.getElementById("m-form-category").value;
    const price = parseInt(document.getElementById("m-form-price").value.trim(), 10) || 11999;
    const mrp = parseInt(document.getElementById("m-form-mrp").value.trim(), 10) || Math.round(price * 1.35);
    const capacity = document.getElementById("m-form-capacity").value.trim();
    const stages = document.getElementById("m-form-stages").value.trim();
    const idealFor = document.getElementById("m-form-ideal").value.trim();
    const warranty = document.getElementById("m-form-warranty").value.trim();
    const badge = document.getElementById("m-form-badge").value.trim();
    const image = document.getElementById("m-form-image-custom").value.trim() || "assets/bele-water-purifier.jpg";
    const description = document.getElementById("m-form-desc").value.trim();
    const discount = badge || `${Math.round(((mrp - price) / mrp) * 100)}% OFF`;

    if (!name) {
      alert("Please enter machine name");
      return;
    }

    const firestoreData = {
      name,
      description,
      image,
      originalPrice: mrp,
      salePrice: price,
      discount,
      ctaLink: "",
      active: true,
      category,
      saleTitle,
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

    if (id) {
      const index = this.machines.findIndex(m => m.id === id);
      if (index !== -1) {
        this.machines[index] = {
          ...this.machines[index],
          name, saleTitle, category, price, salePrice: price, mrp, originalPrice: mrp, discount, capacity, stages, idealFor, warranty, badge, image, description, active: true
        };
        this.showToast(`Updated "${name}" successfully!`);
      }
      if (window.db) {
        try {
          await window.db.collection("products").doc(id).set(firestoreData, { merge: true });
        } catch (err) {
          console.warn("[Firestore] Error updating product:", err);
        }
      }
    } else {
      const targetId = "cm-" + Date.now();
      const newMachine = {
        id: targetId,
        name, saleTitle, category, price, salePrice: price, mrp, originalPrice: mrp, discount, rating: 4.9, reviewCount: 1, capacity, stages, idealFor, warranty, badge, image, description, active: true
      };
      this.machines.unshift(newMachine);
      this.showToast(`Added "${name}" with e-commerce pricing!`);

      if (window.db) {
        try {
          await window.db.collection("products").doc(targetId).set({ ...firestoreData, createdAt: new Date().toISOString() });
        } catch (err) {
          console.warn("[Firestore] Error creating product:", err);
        }
      }
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
      if (window.db) {
        try {
          await window.db.collection("products").doc(id).delete();
        } catch (err) {
          console.warn("[Firestore] Error deleting product:", err);
        }
      }
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

// Global helper to seed default products into Firestore products collection
window.seedProductsToFirestore = async function() {
  if (!window.db) {
    throw new Error("Cloud Firestore is not initialized.");
  }
  const defaultItems = typeof DEFAULT_MACHINES !== "undefined" ? DEFAULT_MACHINES : [];
  let count = 0;
  for (const item of defaultItems) {
    const origPrice = Number(item.mrp || Math.round(item.price * 1.35));
    const salePrice = Number(item.price || 11999);
    const disc = item.badge || `${Math.round(((origPrice - salePrice) / origPrice) * 100)}% OFF`;

    await window.db.collection("products").doc(item.id).set({
      name: item.name,
      description: item.description || "",
      image: item.image || "assets/bele-water-purifier.jpg",
      originalPrice: origPrice,
      salePrice: salePrice,
      discount: disc,
      ctaLink: "",
      active: true,
      category: item.category || "Domestic",
      saleTitle: item.saleTitle || "",
      capacity: item.capacity || "15 LPH",
      stages: item.stages || "Multi-Stage RO",
      idealFor: item.idealFor || "Dharmapuri Groundwater",
      warranty: item.warranty || "1 Year Comprehensive Onsite Warranty",
      rating: item.rating || 4.9,
      reviewCount: item.reviewCount || 10,
      freeDelivery: true,
      freeInstall: true,
      createdAt: new Date().toISOString()
    }, { merge: true });
    count++;
  }
  return count;
};

// Global instance
let machineManager;
document.addEventListener("DOMContentLoaded", () => {
  if (document.getElementById("custom-machines-grid")) {
    machineManager = new MachineManager();
  }
});
