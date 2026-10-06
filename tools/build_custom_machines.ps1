. "d:\varun aqua tech website\tools\templates.ps1"

$customMachinesContent = @"
<div style="max-width: 1100px; margin: 0 auto;">
  <!-- Owner Spotlight & Brand Identity Card -->
  <div class="owner-spotlight-card" style="margin-bottom: 2.5rem;">
    <div class="owner-spotlight-grid">
      <div class="owner-avatar-wrap">
        <img src="../assets/logo.png" alt="VARUN AQUA TECH Official Logo" style="width: 76px; height: 76px; aspect-ratio: 1 / 1; object-fit: contain;">
      </div>
      <div class="owner-content">
        <h2 style="color: #FFFFFF; font-size: 1.5rem; margin-bottom: 0.25rem;">VARUN AQUA TECH</h2>
        <div class="owner-title-tag">Founder &amp; Proprietor: Selvam .V &bull; 15+ Years Direct Hands-on Service</div>
        <p class="owner-bio">
          Every custom RO purifier and commercial skid plant is engineered and calibrated by founder <strong>Selvam .V</strong> to handle the heavy minerals and varying TDS levels found in borewells across Dharmapuri, Harur, Palacode, Pennagaram, and surrounding taluks. Free doorstep installation is provided on every domestic purchase.
        </p>
      </div>
      <div class="owner-ctas">
        <a href="tel:+918838055968" class="btn btn-secondary btn-sm">&#128222; Call Selvam .V</a>
        <a href="https://wa.me/918838055968?text=Hello%20Selvam%20.V,%20I%20am%20interested%20in%20a%20custom-built%20RO%20machine%20from%20VARUN%20AQUA%20TECH." class="btn btn-whatsapp btn-sm" target="_blank" rel="noopener">&#128172; WhatsApp Founder</a>
      </div>
    </div>
  </div>

  <!-- Intro Text -->
  <div style="text-align: center; margin-bottom: 2.5rem;">
    <span class="badge badge-aqua">Interactive Custom Machine Builder</span>
    <h2 style="margin-top: 0.5rem; margin-bottom: 0.8rem;">Browse or Create Custom Built Machines</h2>
    <p style="max-width: 760px; margin: 0 auto; color: var(--color-text-muted); font-size: 1.05rem;">
      Click on any machine to <strong>inquire directly on WhatsApp</strong> with pre-filled specifications. You can create custom machine configurations, edit existing models, or request custom capacities below.
    </p>
  </div>

  <!-- CRUD Toolbar -->
  <div class="crud-toolbar">
    <div class="crud-filter-group" aria-label="Machine Categories">
      <button class="crud-filter-btn active" data-filter="All">All Machines</button>
      <button class="crud-filter-btn" data-filter="Domestic">Domestic RO</button>
      <button class="crud-filter-btn" data-filter="Commercial">Commercial (50-100 LPH)</button>
      <button class="crud-filter-btn" data-filter="Industrial">Industrial Plants</button>
    </div>

    <div class="crud-search-wrap">
      <span class="crud-search-icon">&#128269;</span>
      <input type="text" id="machine-search-input" class="crud-search-input" placeholder="Search machine, TDS, capacity...">
    </div>

    <div class="crud-admin-buttons">
      <button id="btn-add-machine" class="btn btn-primary btn-sm">&#65291; Add Custom Machine</button>
      <button type="button" id="btn-view-cart-nav" class="btn btn-secondary btn-sm" style="display: inline-flex; align-items: center; gap: 0.35rem;">
        <span>🛒</span> Cart (<span id="nav-cart-count">0</span>)
      </button>
      <button type="button" class="btn btn-secondary btn-sm" onclick="machineManager.resetToDefaults()" title="Restore all recommended models">🔄 Reset</button>
    </div>
  </div>

  <!-- Custom Machines Grid (Populated by js/machines-crud.js) -->
  <div id="custom-machines-grid" class="custom-machines-grid">
    <!-- Rendered dynamically -->
  </div>

  <!-- Modal for Adding / Editing Machine -->
  <div id="machine-crud-modal" class="crud-modal-overlay" role="dialog" aria-modal="true" aria-labelledby="modal-title">
    <div class="crud-modal-box">
      <div class="crud-modal-header">
        <h3 id="modal-title">Add New Custom RO Machine (Owner Mode)</h3>
        <button type="button" class="crud-modal-close" aria-label="Close dialog">&times;</button>
      </div>

      <form id="machine-crud-form">
        <input type="hidden" id="machine-id">

        <div class="form-group">
          <label for="m-form-name" class="form-label">Machine / Product Model Name *</label>
          <input type="text" id="m-form-name" class="form-control" placeholder="e.g. Varun Pro Alkaline Copper RO" required>
        </div>

        <div class="form-group">
          <label for="m-form-sale-title" class="form-label">Sale Tagline / Offer Title</label>
          <input type="text" id="m-form-sale-title" class="form-control" placeholder="e.g. Dharmapuri High-TDS Borewell Special • 8-Stage Mineralizer">
        </div>

        <div class="form-grid-2">
          <div class="form-group">
            <label for="m-form-category" class="form-label">Category *</label>
            <select id="m-form-category" class="form-control" required>
              <option value="Domestic">Domestic</option>
              <option value="Commercial">Commercial</option>
              <option value="Industrial">Industrial</option>
            </select>
          </div>

          <div class="form-group">
            <label for="m-form-capacity" class="form-label">Capacity / Flow Rate *</label>
            <input type="text" id="m-form-capacity" class="form-control" placeholder="e.g. 15 LPH (12L Tank)" required>
          </div>
        </div>

        <div class="form-grid-2">
          <div class="form-group">
            <label for="m-form-price" class="form-label">Offer / Sale Price (₹) *</label>
            <input type="number" id="m-form-price" class="form-control" placeholder="e.g. 11999" required>
          </div>

          <div class="form-group">
            <label for="m-form-mrp" class="form-label">Original MRP (₹)</label>
            <input type="number" id="m-form-mrp" class="form-control" placeholder="e.g. 16999">
          </div>
        </div>

        <div class="form-grid-2">
          <div class="form-group">
            <label for="m-form-stages" class="form-label">Filtration Stages / Technology *</label>
            <input type="text" id="m-form-stages" class="form-control" placeholder="e.g. 8-Stage RO + UV + Alkaline + Copper" required>
          </div>

          <div class="form-group">
            <label for="m-form-ideal" class="form-label">Water Source / TDS Limit *</label>
            <input type="text" id="m-form-ideal" class="form-control" placeholder="e.g. Borewell / Up to 2500 TDS" required>
          </div>
        </div>

        <div class="form-grid-2">
          <div class="form-group">
            <label for="m-form-warranty" class="form-label">Warranty &amp; Guarantee</label>
            <input type="text" id="m-form-warranty" class="form-control" placeholder="e.g. 1 Year Comprehensive Onsite Warranty">
          </div>

          <div class="form-group">
            <label for="m-form-badge" class="form-label">Highlight / Offer Badge</label>
            <input type="text" id="m-form-badge" class="form-control" placeholder="e.g. Festive Offer • 29% OFF">
          </div>
        </div>

        <div class="form-group">
          <label class="form-label">Exact Machine Model Photo *</label>
          
          <!-- Source Selector Tabs -->
          <div class="image-source-switcher">
            <button type="button" class="img-tab-btn active" data-tab="upload">📷 Upload Photo</button>
            <button type="button" class="img-tab-btn" data-tab="presets">🖼️ Gallery Presets</button>
            <button type="button" class="img-tab-btn" data-tab="url">🔗 Image URL</button>
          </div>

          <!-- Tab 1: Upload Dropzone -->
          <div id="tab-content-upload" class="img-tab-panel active">
            <div class="media-upload-dropzone" id="media-dropzone">
              <input type="file" id="m-form-image-file" accept="image/*" class="media-file-input">
              <div class="dropzone-icon">📷</div>
              <div class="dropzone-title">Click to upload photo or take picture</div>
              <div class="dropzone-subtitle">Attach photos from your device, phone camera, or file manager</div>
              <div id="dropzone-status" class="dropzone-status" style="display: none;"></div>
            </div>
          </div>

          <!-- Tab 2: Gallery Presets Grid -->
          <div id="tab-content-presets" class="img-tab-panel">
            <div class="preset-photo-grid" id="preset-photo-grid"></div>
          </div>

          <!-- Tab 3: Custom URL Input -->
          <div id="tab-content-url" class="img-tab-panel">
            <input type="text" id="m-form-image-custom" class="form-control" placeholder="Or enter custom image path / URL (e.g. assets/bele-water-purifier.jpg)">
          </div>

          <!-- Live Image Preview Card -->
          <div class="img-preview-card" id="img-preview-card">
            <div class="img-preview-thumb">
              <img id="m-form-image-preview" src="../assets/bele-water-purifier.jpg" alt="Model Preview">
            </div>
            <div class="img-preview-meta">
              <span class="preview-status-badge" id="preview-status-badge">Default Model</span>
              <span class="preview-filename" id="preview-filename">bele-water-purifier.jpg</span>
              <button type="button" class="btn-clear-img" id="btn-clear-img">Change / Upload New Photo</button>
            </div>
          </div>
        </div>

        <div class="form-group">
          <label for="m-form-desc" class="form-label">Description / Features</label>
          <textarea id="m-form-desc" class="form-control" rows="3" placeholder="Explain the key features, filter materials, and advantages..."></textarea>
        </div>

        <div style="display: flex; gap: 1rem; justify-content: flex-end; margin-top: 1.5rem;">
          <button type="button" id="btn-cancel-modal" class="btn btn-secondary">Cancel</button>
          <button type="submit" class="btn btn-primary">Save Machine</button>
        </div>
      </form>
    </div>
  </div>

  <!-- Floating Shopping Cart Button -->
  <button id="floating-cart-btn" class="floating-cart-btn" aria-label="View Shopping Cart">
    <span class="cart-btn-icon">🛒</span>
    <span class="cart-btn-text">Cart</span>
    <span id="cart-badge-count" class="cart-badge">0</span>
  </button>

  <!-- Slide-out Shopping Cart Drawer -->
  <div id="cart-drawer-overlay" class="cart-drawer-overlay" role="dialog" aria-modal="true" aria-labelledby="cart-title">
    <div class="cart-drawer">
      <div class="cart-drawer-header">
        <div class="cart-header-title-wrap">
          <h3 id="cart-title">🛒 Your Water Purifier Cart</h3>
          <span id="cart-drawer-count" class="cart-count-pill">0 items</span>
        </div>
        <button type="button" id="cart-close-btn" class="cart-close-btn" aria-label="Close cart">&times;</button>
      </div>

      <div id="cart-items-container" class="cart-drawer-body">
        <!-- Populated dynamically by machines-crud.js -->
      </div>

      <div class="cart-drawer-footer">
        <div class="cart-summary-card">
          <div class="cart-summary-line">
            <span>Items Total:</span>
            <span id="cart-subtotal-val" class="cart-sum-val">₹0</span>
          </div>
          <div class="cart-summary-line">
            <span>Delivery &amp; Installation:</span>
            <span class="cart-sum-free">FREE (Dharmapuri)</span>
          </div>
          <div class="cart-summary-line cart-total-line">
            <span>Total Payable Amount:</span>
            <span id="cart-total-val" class="cart-sum-total">₹0</span>
          </div>
        </div>

        <!-- Customer Order Details -->
        <div class="cart-customer-fields">
          <div class="form-group" style="margin-bottom: 0.5rem;">
            <input type="text" id="cart-customer-name" class="form-control form-control-sm" placeholder="Your Name (e.g. Selvakumar)">
          </div>
          <div class="form-group" style="margin-bottom: 0.75rem;">
            <input type="text" id="cart-customer-area" class="form-control form-control-sm" placeholder="Delivery Area / Taluk (e.g. Dharmapuri Town, Harur)">
          </div>
        </div>

        <button type="button" id="btn-checkout-whatsapp" class="btn btn-whatsapp btn-block cart-checkout-btn">
          <span>💬</span> Order Cart on WhatsApp
        </button>
        
        <button type="button" id="btn-clear-cart" class="btn-clear-cart-link">Clear Cart</button>
      </div>
    </div>
  </div>

  <!-- Custom Engineering Highlights Strip -->
  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.2rem; margin-top: 3.5rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1.25rem;">Why Choose a Custom Machine from VARUN AQUA TECH?</h3>
    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(260px, 1fr)); gap: 1.5rem;">
      <div>
        <h4 style="font-size: 1.05rem; color: var(--color-blue); margin-bottom: 0.35rem;">&#128167; Matched to Dharmapuri Water</h4>
        <p style="font-size: 0.9rem; color: var(--color-text-muted); line-height: 1.6;">Off-the-shelf branded purifiers often choke on 1500+ TDS borewell water. Selvam .V customizes high-pressure booster pumps and high-rejection membranes for maximum durability.</p>
      </div>
      <div>
        <h4 style="font-size: 1.05rem; color: var(--color-blue); margin-bottom: 0.35rem;">&#128295; Free Doorstep Installation</h4>
        <p style="font-size: 0.9rem; color: var(--color-text-muted); line-height: 1.6;">Every domestic custom RO comes with complete professional doorstep mounting, pre-filter housing, and brass diverter valve installation at no extra charge.</p>
      </div>
      <div>
        <h4 style="font-size: 1.05rem; color: var(--color-blue); margin-bottom: 0.35rem;">&#128172; 1-Click WhatsApp Inquiries</h4>
        <p style="font-size: 0.9rem; color: var(--color-text-muted); line-height: 1.6;">Click any machine on this page to chat directly with Selvam .V. Discuss your water test results, request site inspection, and arrange same-day delivery.</p>
      </div>
    </div>
  </div>
</div>
"@

Build-Subpage `
  -folder "custom-machines" `
  -title "Custom Built RO Machines & Plants in Dharmapuri | VARUN AQUA TECH" `
  -metaDesc "Explore custom-built RO water purifiers and commercial plants assembled by VARUN AQUA TECH in Dharmapuri. Direct WhatsApp order, custom capacity from 15 LPH to 5000 LPH." `
  -canonical "https://varunaquatech.com/custom-machines/" `
  -h1 "Custom Built RO Machines & Plants" `
  -subtitle "Engineered by Selvam .V for Dharmapuri Borewell & High TDS Water" `
  -activeNav "custom" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="Custom Machines"; url=""}) `
  -mainContent $customMachinesContent `
  -defaultService "New RO Purifier" `
  -defaultLocation "Dharmapuri" `
  -extraScripts "<script src=""../js/machines-crud.js?v=20261006_ecom""></script>"
