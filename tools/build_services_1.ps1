. "d:\varun aqua tech website\tools\templates.ps1"

# 1. RO SALES PAGE
$salesContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">Purification Systems</span>
      <h2>Domestic &amp; Commercial RO Purifier Sales</h2>
      <p>
        Looking for a reliable RO water purifier for your home, commercial kitchen, or business premises in Dharmapuri? VARUN AQUA TECH provides practical sales support tailored to your water source and daily purification volume.
      </p>
      <p>
        Rather than selling generic units without understanding your water chemistry, we assess your tap or borewell water to help you select a system with the appropriate filtration stages, flow capacity, and storage tank size &mdash; <strong>Free Professional Installation Included</strong>.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Inquire About RO Purifiers</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/service-sales.jpg" alt="RO water purifier sales in Dharmapuri by VARUN AQUA TECH" width="540" height="380" style="border-radius: var(--radius-xl); object-fit: cover; width: 100%; box-shadow: var(--shadow-md);">
    </div>
  </div>

  <div class="services-grid" style="grid-template-columns: repeat(2, 1fr); margin-bottom: 3.5rem;">
    <div class="service-card">
      <div class="service-card-img-wrap">
        <span class="service-card-badge">Home Solutions</span>
        <img src="../assets/bele-water-purifier.jpg" alt="Domestic RO Water Purifiers in Dharmapuri" loading="lazy">
      </div>
      <div class="service-card-body">
        <h3 class="service-title">Domestic RO Water Purifiers</h3>
        <p class="service-desc">
          Ideal for residential homes, apartments, and villas. Compact wall-mounted or under-sink models configured for domestic drinking and cooking water. Includes multi-stage sediment, carbon, RO membrane, and mineral enhancement.
        </p>
        <ul class="checklist" style="margin-bottom: 1.25rem;">
          <li><span class="check">&#10003;</span> Storage capacities: 7L to 12L</li>
          <li><span class="check">&#10003;</span> Multi-stage protection (RO + UV + Alkaline Copper)</li>
          <li><span class="check">&#10003;</span> Transparent food-grade storage tanks</li>
          <li><span class="check">&#10003;</span> <strong>Free Installation at Doorstep</strong></li>
        </ul>
        <a href="../ro-installation/" class="btn btn-secondary btn-sm">View Installation Details &rarr;</a>
      </div>
    </div>

    <div class="service-card">
      <div class="service-card-img-wrap">
        <span class="service-card-badge">Commercial &amp; Skid</span>
        <img src="../assets/commercial-plant.jpg" alt="Commercial RO Systems Dharmapuri" loading="lazy">
      </div>
      <div class="service-card-body">
        <h3 class="service-title">Commercial RO Systems</h3>
        <p class="service-desc">
          High-output purification plants for schools, offices, restaurants, clinics, tea stalls, and small industrial setups in Dharmapuri district requiring higher daily water output.
        </p>
        <ul class="checklist" style="margin-bottom: 1.25rem;">
          <li><span class="check">&#10003;</span> Capacities: 25 LPH, 50 LPH, 100 LPH to 1,000+ LPH</li>
          <li><span class="check">&#10003;</span> Heavy-duty booster pumps and stainless steel skid frames</li>
          <li><span class="check">&#10003;</span> Commercial pre-filtration FRP media vessels</li>
          <li><span class="check">&#10003;</span> Customized for high borewell TDS</li>
        </ul>
        <a href="../commercial-ro-dharmapuri/" class="btn btn-secondary btn-sm">Explore Commercial RO &rarr;</a>
      </div>
    </div>
  </div>

  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem; margin-bottom: 3rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Key Factors When Choosing an RO Purifier in Dharmapuri</h3>
    <p>We guide you through the technical considerations before purchase:</p>
    <div class="split-features" style="margin-top: 1rem;">
      <div class="feature-pill"><span class="icon">&#129514;</span> Raw water TDS measurement</div>
      <div class="feature-pill"><span class="icon">&#128167;</span> Borewell vs Cauvery municipal supply</div>
      <div class="feature-pill"><span class="icon">&#9879;</span> Daily volume &amp; family member count</div>
      <div class="feature-pill"><span class="icon">&#128260;</span> Future consumable replacement access</div>
    </div>
  </div>
</div>
"@

Build-Subpage `
  -folder "ro-water-purifier-sales" `
  -title "RO Water Purifier Sales in Dharmapuri | VARUN AQUA TECH" `
  -metaDesc "Explore domestic and commercial RO water purifier sales in Dharmapuri and Bosinaickenhalli with VARUN AQUA TECH. Balanced TDS systems tailored to your water source." `
  -canonical "https://varunaquatech.com/ro-water-purifier-sales/" `
  -h1 "RO Water Purifier Sales in Dharmapuri" `
  -subtitle "Domestic & Commercial Purification Solutions Tailored to Your Water Quality" `
  -activeNav "sales" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="RO Sales"; url=""}) `
  -mainContent $salesContent `
  -defaultService "New RO Purifier" `
  -defaultLocation "Dharmapuri"

# 2. RO SERVICE HUB
$serviceContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">Complete Doorstep Care</span>
      <h2>Professional RO Water Purifier Services in Dharmapuri</h2>
      <p>
        VARUN AQUA TECH provides complete servicing, inspection, uninstallation, maintenance, and filter care for domestic and commercial RO water purifiers across Dharmapuri and neighboring taluks.
      </p>
      <p>
        With over 15 years of practical hands-on field experience led by founder <strong>Selvam .V</strong>, our certified technicians carry calibrated testing equipment and genuine spare parts directly to your home or commercial premises.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Book Doorstep Service</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/ro-service-technician-filters.jpg" alt="Certified RO Technician Service VARUN AQUA TECH Dharmapuri" width="540" height="380" style="border-radius: var(--radius-xl); object-fit: cover; width: 100%; box-shadow: var(--shadow-md);">
    </div>
  </div>

  <div class="services-grid" style="margin-bottom: 3.5rem;">
    <div class="service-card">
      <div class="service-card-img-wrap">
        <span class="service-card-badge">Setup</span>
        <img src="../assets/service-installation.jpg" alt="RO Installation Dharmapuri" loading="lazy">
      </div>
      <div class="service-card-body">
        <h3 class="service-title">RO Installation</h3>
        <p class="service-desc">Professional mounting, water inlet plumbing, reject water line routing, and pre-filter housing setup.</p>
        <a href="../ro-installation/" class="btn btn-secondary btn-sm">RO Installation &rarr;</a>
      </div>
    </div>

    <div class="service-card">
      <div class="service-card-img-wrap">
        <span class="service-card-badge">Repair</span>
        <img src="../assets/service-repair.jpg" alt="RO Repair Dharmapuri" loading="lazy">
      </div>
      <div class="service-card-body">
        <h3 class="service-title">RO Repair &amp; Troubleshooting</h3>
        <p class="service-desc">Systematic diagnostics for leaks, low flow, motor humming, electrical issues, or auto-cut cutoff faults.</p>
        <a href="../ro-repair/" class="btn btn-secondary btn-sm">RO Repair &rarr;</a>
      </div>
    </div>

    <div class="service-card">
      <div class="service-card-img-wrap">
        <span class="service-card-badge">Maintenance</span>
        <img src="../assets/service-maintenance.jpg" alt="RO Maintenance Dharmapuri" loading="lazy">
      </div>
      <div class="service-card-body">
        <h3 class="service-title">Routine Maintenance</h3>
        <p class="service-desc">Comprehensive system checkups, tank sanitization, pressure testing, and TDS level verification.</p>
        <a href="../ro-maintenance/" class="btn btn-secondary btn-sm">RO Maintenance &rarr;</a>
      </div>
    </div>

    <div class="service-card">
      <div class="service-card-img-wrap">
        <span class="service-card-badge">AMC</span>
        <img src="../assets/service-amc.jpg" alt="RO AMC Maintenance Dharmapuri" loading="lazy">
      </div>
      <div class="service-card-body">
        <h3 class="service-title">AMC Maintenance Contracts</h3>
        <p class="service-desc">Year-round scheduled service support and preventative care for worry-free water purification.</p>
        <a href="../ro-amc/" class="btn btn-secondary btn-sm">AMC Plans &rarr;</a>
      </div>
    </div>

    <div class="service-card">
      <div class="service-card-img-wrap">
        <span class="service-card-badge">Consumables</span>
        <img src="../assets/service-filters.jpg" alt="RO Filter Membrane Replacement Dharmapuri" loading="lazy">
      </div>
      <div class="service-card-body">
        <h3 class="service-title">Filter &amp; Membrane Replacement</h3>
        <p class="service-desc">High-quality sediment candles, activated carbon, and thin-film composite reverse osmosis membranes.</p>
        <a href="../filter-membrane-replacement/" class="btn btn-secondary btn-sm">Filter Replacement &rarr;</a>
      </div>
    </div>

    <div class="service-card">
      <div class="service-card-img-wrap">
        <span class="service-card-badge">Commercial</span>
        <img src="../assets/commercial-plant.jpg" alt="Commercial RO Plants Dharmapuri" loading="lazy">
      </div>
      <div class="service-card-body">
        <h3 class="service-title">Commercial RO Support</h3>
        <p class="service-desc">Doorstep servicing for high-capacity RO systems, FRP media vessels, and commercial booster pumps.</p>
        <a href="../commercial-ro-dharmapuri/" class="btn btn-secondary btn-sm">Commercial RO &rarr;</a>
      </div>
    </div>
  </div>

  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Service Process Across Dharmapuri</h3>
    <p>How we handle every service call:</p>
    <ul class="checklist">
      <li><span class="check">&#10003;</span> <strong>Contact &amp; Requirement:</strong> Call or WhatsApp our center with your location and symptoms.</li>
      <li><span class="check">&#10003;</span> <strong>Doorstep Assessment:</strong> Our team visits your home or commercial site to inspect the unit and test TDS levels.</li>
      <li><span class="check">&#10003;</span> <strong>Service Execution:</strong> Repairs, filter replacements, or servicing performed with genuine components.</li>
      <li><span class="check">&#10003;</span> <strong>Final Quality Verification:</strong> We check water flow, leak-free joints, and auto-shutoff functionality before completion.</li>
    </ul>
  </div>
</div>
"@

Build-Subpage `
  -folder "ro-service" `
  -title "RO Water Purifier Service in Dharmapuri | VARUN AQUA TECH" `
  -metaDesc "Complete RO water purifier service center in Dharmapuri & Bosinaickenhalli. Doorstep installation, repair, maintenance, filter replacement & AMC. Call +91 88380 55968." `
  -canonical "https://varunaquatech.com/ro-service/" `
  -h1 "RO Water Purifier Service in Dharmapuri" `
  -subtitle "Complete Doorstep Installation, Repair, Servicing & Maintenance Solutions" `
  -activeNav "service" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="RO Service Hub"; url=""}) `
  -mainContent $serviceContent `
  -defaultService "RO Service" `
  -defaultLocation "Dharmapuri"

# 3. RO INSTALLATION
$installContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">Professional Setup</span>
      <h2>Professional RO Water Purifier Installation</h2>
      <p>
        Proper installation is essential for the longevity, filtration efficiency, and leak-free operation of any RO water purifier. VARUN AQUA TECH provides doorstep installation support across Dharmapuri, Bosinaickenhalli, and nearby areas.
      </p>
      <p>
        Whether you purchased a new domestic water purifier, need to reinstall your existing unit following home relocation, or require commercial system plumbing, our team ensures neat, robust, and reliable mounting and connections &mdash; <strong>Free installation provided on all purifiers purchased through us</strong>.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Book RO Installation</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/service-installation.jpg" alt="RO water purifier installation service near Dharmapuri Tamil Nadu" width="540" height="380" style="border-radius: var(--radius-xl); object-fit: cover; width: 100%; box-shadow: var(--shadow-md);">
    </div>
  </div>

  <div style="margin-bottom: 3.5rem;">
    <h3 style="font-size: 1.45rem; color: var(--color-navy); margin-bottom: 1.25rem;">What Our RO Installation Covers</h3>
    <div class="services-grid" style="grid-template-columns: repeat(3, 1fr);">
      <div class="service-card">
        <div class="service-icon-box">&#128295;</div>
        <h4 class="service-title">Wall Mounting</h4>
        <p class="service-desc">Sturdy drilling, heavy-duty wall anchors, and level positioning near water and electrical outlets.</p>
      </div>
      <div class="service-card">
        <div class="service-icon-box">&#128167;</div>
        <h4 class="service-title">Plumbing &amp; Feed Valve</h4>
        <p class="service-desc">Diverter valve installation on raw water line with high-pressure braided tubing and pre-filter housing.</p>
      </div>
      <div class="service-card">
        <div class="service-icon-box">&#9881;</div>
        <h4 class="service-title">Reject Water Routing</h4>
        <p class="service-desc">Clean routing of the RO reject drainage line to prevent backflow and enable water reuse for plants or washing.</p>
      </div>
    </div>
  </div>

  <div class="split-section" style="margin-bottom: 3rem; background: var(--color-white); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2rem; box-shadow: var(--shadow-sm);">
    <div>
      <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Kitchen Counter &amp; Tap Setup</h3>
      <p>
        We ensure clean countertop or under-sink faucet integrations with stainless steel food-grade taps, neat tubing conduits, and leak-proof quick connections.
      </p>
      <ul class="checklist">
        <li><span class="check">&#10003;</span> High-pressure tested joints with zero dripping</li>
        <li><span class="check">&#10003;</span> Pre-filter bowl isolation valve for easy maintenance</li>
        <li><span class="check">&#10003;</span> Digital TDS calibration post-installation</li>
      </ul>
    </div>
    <div class="split-visual">
      <img src="../assets/modern-kitchen-tap.jpg" alt="Modern Kitchen Purifier Drinking Tap Setup" width="480" height="320" style="border-radius: var(--radius-lg); object-fit: cover; width: 100%; box-shadow: var(--shadow-sm);">
    </div>
  </div>

  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Pre-Installation Checklist for Dharmapuri Customers</h3>
    <ul class="checklist">
      <li><span class="check">&#10003;</span> <strong>Continuous Water Supply:</strong> Ensure water pressure from overhead tank or dedicated booster feed.</li>
      <li><span class="check">&#10003;</span> <strong>Power Point:</strong> Standard 5A or 6A electrical socket within 1 to 1.5 meters of purifier location.</li>
      <li><span class="check">&#10003;</span> <strong>Drainage Facility:</strong> Sink drain or utility outlet for reject water tube.</li>
      <li><span class="check">&#10003;</span> <strong>TDS Inspection:</strong> Our technician checks incoming raw water TDS to verify membrane compatibility.</li>
    </ul>
  </div>
</div>
"@

Build-Subpage `
  -folder "ro-installation" `
  -title "RO Installation in Dharmapuri | VARUN AQUA TECH" `
  -metaDesc "Professional RO water purifier installation service in Dharmapuri & Bosinaickenhalli. Doorstep wall mounting, pre-filter fitting & plumbing setup. Call +91 88380 55968." `
  -canonical "https://varunaquatech.com/ro-installation/" `
  -h1 "RO Water Purifier Installation in Dharmapuri" `
  -subtitle "Professional Wall Mounting, Inlet Plumbing & Doorstep Setup Support" `
  -activeNav "install" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="RO Installation"; url=""}) `
  -mainContent $installContent `
  -defaultService "RO Installation" `
  -defaultLocation "Dharmapuri"

# 4. RO REPAIR
$repairContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">Troubleshooting &amp; Diagnostics</span>
      <h2>RO Purifier Repair &amp; Service in Dharmapuri</h2>
      <p>
        Is your RO water purifier leaking, vibrating loudly, dispensing low water, or completely unresponsive? VARUN AQUA TECH provides practical diagnostic and repair services for domestic and commercial purifiers in Dharmapuri.
      </p>
      <p>
        Because purifier malfunctions can stem from multiple interdependent components—such as blocked pre-filters, fouled membranes, power supply SMPS failure, or solenoid valve sticking—we inspect the unit on-site with multimeters and pressure gauges to identify the exact cause.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Book RO Repair Service</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/service-repair.jpg" alt="RO water purifier repair service in Dharmapuri by VARUN AQUA TECH" width="540" height="380" style="border-radius: var(--radius-xl); object-fit: cover; width: 100%; box-shadow: var(--shadow-md);">
    </div>
  </div>

  <div style="margin-bottom: 3.5rem;">
    <h3 style="font-size: 1.45rem; color: var(--color-navy); margin-bottom: 1.25rem;">Common Issues We Assess &amp; Resolve</h3>
    <div class="services-grid" style="grid-template-columns: repeat(2, 1fr);">
      <div class="service-card">
        <h4 class="service-title">&#128167; Water Leaking From Purifier</h4>
        <p class="service-desc">Leaking usually occurs at loose push-fit connectors, cracked pre-filter bowls, ruptured O-rings, or pressure valve joints.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">&#9203; Slow Water Flow / Long Fill Time</h4>
        <p class="service-desc">Gradual flow reduction is often caused by sediment choking, low input pressure, or scaled RO membrane pores.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">&#9888; Purifier Not Turning On</h4>
        <p class="service-desc">Electrical SMPS adapter burnout, low-pressure switch (LPS) disconnection, or floating microswitch failure in the storage tank.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">&#128683; Continuous Reject Water Flow</h4>
        <p class="service-desc">Solenoid valve (SV) failing to shut off when tank is full, wasting water continuously into the drainage pipe.</p>
      </div>
    </div>
  </div>

  <div class="split-section" style="margin-bottom: 3rem; background: var(--color-white); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2rem; box-shadow: var(--shadow-sm);">
    <div>
      <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">100% Genuine Replacement Parts</h3>
      <p>
        We never install cheap low-grade counterfeit spares. Our field repair kit contains certified high-pressure booster pumps, copper alkaline post-filters, heavy-duty SMPS adapters, and genuine high-rejection RO membranes.
      </p>
      <ul class="checklist">
        <li><span class="check">&#10003;</span> Genuine booster pump replacements with warranty</li>
        <li><span class="check">&#10003;</span> Food-grade tubing and brass/copper fittings</li>
        <li><span class="check">&#10003;</span> On-site repair conducted right in front of you</li>
      </ul>
    </div>
    <div class="split-visual">
      <img src="../assets/ro-spare-parts.jpg" alt="Genuine RO Spare Parts and Diagnostics Kit" width="480" height="320" style="border-radius: var(--radius-lg); object-fit: cover; width: 100%; box-shadow: var(--shadow-sm);">
    </div>
  </div>

  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Transparent Repair Approach</h3>
    <p>
      Our technicians do not make arbitrary remote claims. We visit your location in Dharmapuri or nearby areas, measure water pressure and TDS levels, test electrical components with multimeters, and explain the necessary corrective action.
    </p>
    <p style="margin-bottom: 0;">
      Need immediate diagnostic assistance? Call our service center directly at <a href="tel:$($global:NAP.PhoneTel)" style="color: var(--color-blue); font-weight: 700;">$($global:NAP.Phone)</a>.
    </p>
  </div>
</div>
"@

Build-Subpage `
  -folder "ro-repair" `
  -title "RO Repair in Dharmapuri | Water Purifier Troubleshooting | VARUN AQUA TECH" `
  -metaDesc "Reliable RO purifier repair & diagnostics in Dharmapuri, Bosinaickenhalli. Doorstep repair for water leakage, low flow, motor issues & filter failure. Call +91 88380 55968." `
  -canonical "https://varunaquatech.com/ro-repair/" `
  -h1 "RO Water Purifier Repair in Dharmapuri" `
  -subtitle "Doorstep Diagnostics, Leak Resolution & Technical Troubleshooting" `
  -activeNav "service" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="RO Repair"; url=""}) `
  -mainContent $repairContent `
  -defaultService "RO Repair" `
  -defaultLocation "Dharmapuri"