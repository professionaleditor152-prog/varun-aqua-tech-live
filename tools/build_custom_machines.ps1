. "d:\varun aqua tech website\tools\templates.ps1"

$customMachinesContent = @"
<div style="max-width: 1100px; margin: 0 auto;">
  <!-- Owner Spotlight & Brand Identity Card -->
  <div class="owner-spotlight-card" style="margin-bottom: 2.5rem;">
    <div class="owner-spotlight-grid">
      <div class="owner-avatar-wrap">
        <img src="../assets/logo.png" alt="VARUN AQUA TECH Official Logo" width="80" height="80">
      </div>
      <div class="owner-content">
        <h2 style="color: #FFFFFF; font-size: 1.5rem; margin-bottom: 0.25rem;">VARUN AQUA TECH</h2>
        <div class="owner-title-tag">Founder &amp; Proprietor: Mr. Varun &bull; 15+ Years Direct Hands-on Service</div>
        <p class="owner-bio">
          Every custom RO purifier and commercial skid plant is engineered and calibrated by <strong>Mr. Varun</strong> to handle the heavy minerals and varying TDS levels found in borewells across Dharmapuri, Harur, Palacode, Pennagaram, and surrounding taluks. Free doorstep installation is provided on every domestic purchase.
        </p>
      </div>
      <div class="owner-ctas">
        <a href="tel:+918838055968" class="btn btn-secondary btn-sm">&#128222; Call Mr. Varun</a>
        <a href="https://wa.me/918838055968?text=Hello%20Mr.%20Varun,%20I%20am%20interested%20in%20a%20custom-built%20RO%20machine%20from%20VARUN%20AQUA%20TECH." class="btn btn-whatsapp btn-sm" target="_blank" rel="noopener">&#128172; WhatsApp Founder</a>
      </div>
    </div>
  </div>

  <!-- Intro Text -->
  <div style="text-align: center; margin-bottom: 2.5rem;">
    <span class="badge badge-aqua">Interactive Machine Catalog &amp; Manager</span>
    <h2 style="margin-top: 0.5rem; margin-bottom: 0.8rem;">Browse or Customize Your Purifier</h2>
    <p style="max-width: 760px; margin: 0 auto; color: var(--color-text-muted); font-size: 1.05rem;">
      Click on any machine to <strong>order instantly on WhatsApp</strong> with pre-filled specifications. You can also add custom machine configurations, edit existing models, or update pricing below.
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
      <button id="btn-reset-defaults" class="btn btn-secondary btn-sm" title="Restore factory preset models">&#8635; Reset Defaults</button>
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
        <h3 id="modal-title">Add New Custom RO Machine</h3>
        <button type="button" class="crud-modal-close" aria-label="Close dialog">&times;</button>
      </div>

      <form id="machine-crud-form">
        <input type="hidden" id="machine-id">

        <div class="form-group">
          <label for="m-form-name" class="form-label">Machine Model Name *</label>
          <input type="text" id="m-form-name" class="form-control" placeholder="e.g. Varun Pro Copper RO" required>
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

        <div class="form-group">
          <label for="m-form-stages" class="form-label">Filtration Stages / Technology *</label>
          <input type="text" id="m-form-stages" class="form-control" placeholder="e.g. 8-Stage RO + UV + UF + Copper + Alkaline" required>
        </div>

        <div class="form-grid-2">
          <div class="form-group">
            <label for="m-form-ideal" class="form-label">Ideal For *</label>
            <input type="text" id="m-form-ideal" class="form-control" placeholder="e.g. Borewell / Up to 2500 TDS" required>
          </div>

          <div class="form-group">
            <label for="m-form-price" class="form-label">Price / Starting Rate *</label>
            <input type="text" id="m-form-price" class="form-control" placeholder="e.g. ₹8,499" required>
          </div>
        </div>

        <div class="form-group">
          <label for="m-form-badge" class="form-label">Highlight Badge</label>
          <input type="text" id="m-form-badge" class="form-control" placeholder="e.g. Free Installation Included">
        </div>

        <div class="form-group">
          <label for="m-form-image-preset" class="form-label">Select Photo Asset</label>
          <select id="m-form-image-preset" class="form-control">
            <option value="assets/bele-water-purifier.jpg">Domestic Alkaline RO (Wall-Mounted)</option>
            <option value="assets/benchtop-filtration.jpg">Compact Countertop / Under-Sink Unit</option>
            <option value="assets/bluetech-smart.jpg">Commercial 50 LPH Purifier Unit</option>
            <option value="assets/reverse-osmosis-system.jpg">Heavy-Duty 250-5000 LPH Plant</option>
            <option value="assets/modern-kitchen-tap.jpg">Kitchen Counter Tap Installation</option>
            <option value="assets/ro-membrane-layers.jpg">Multi-Layer Spiral-Wound RO Membrane</option>
          </select>
          <input type="text" id="m-form-image-custom" class="form-control" style="margin-top: 0.5rem;" placeholder="Or enter custom image URL / path">
          <div class="img-preview-box">
            <img id="m-form-image-preview" src="../assets/bele-water-purifier.jpg" alt="Preview">
            <span style="font-size: 0.82rem; color: var(--color-text-muted);">Current image preview shown to customers.</span>
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

  <!-- Custom Engineering Highlights Strip -->
  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.2rem; margin-top: 3.5rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1.25rem;">Why Choose a Custom Machine from VARUN AQUA TECH?</h3>
    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(260px, 1fr)); gap: 1.5rem;">
      <div>
        <h4 style="font-size: 1.05rem; color: var(--color-blue); margin-bottom: 0.35rem;">&#128167; Matched to Dharmapuri Water</h4>
        <p style="font-size: 0.9rem; color: var(--color-text-muted); line-height: 1.6;">Off-the-shelf branded purifiers often choke on 1500+ TDS borewell water. Mr. Varun customizes high-pressure booster pumps and high-rejection membranes for maximum durability.</p>
      </div>
      <div>
        <h4 style="font-size: 1.05rem; color: var(--color-blue); margin-bottom: 0.35rem;">&#128295; Free Doorstep Installation</h4>
        <p style="font-size: 0.9rem; color: var(--color-text-muted); line-height: 1.6;">Every domestic custom RO comes with complete professional doorstep mounting, pre-filter housing, and brass diverter valve installation at no extra charge.</p>
      </div>
      <div>
        <h4 style="font-size: 1.05rem; color: var(--color-blue); margin-bottom: 0.35rem;">&#128172; 1-Click WhatsApp Ordering</h4>
        <p style="font-size: 0.9rem; color: var(--color-text-muted); line-height: 1.6;">Click any machine on this page to chat directly with Mr. Varun. Discuss your water test results, request site inspection, and arrange same-day delivery.</p>
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
  -subtitle "Engineered by Mr. Varun for Dharmapuri Borewell & High TDS Water" `
  -activeNav "custom" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="Custom Machines"; url=""}) `
  -mainContent $customMachinesContent `
  -defaultService "New RO Purifier" `
  -defaultLocation "Dharmapuri" `
  -extraScripts "<script src=""../js/machines-crud.js""></script>"
