. "d:\varun aqua tech website\tools\templates.ps1"

# 5. RO MAINTENANCE
$maintContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">Preventative Servicing</span>
      <h2>Routine RO Purifier Servicing &amp; Maintenance</h2>
      <p>
        Regular servicing is crucial to prevent premature membrane scaling, pump strain, and bacterial buildup in RO storage tanks. In areas with high groundwater mineral content across Dharmapuri, routine maintenance keeps purification efficiency at its peak.
      </p>
      <p>
        VARUN AQUA TECH provides scheduled doorstep maintenance checkups for domestic and commercial water purifiers, ensuring your drinking water remains clean, pleasant-tasting, and safe.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Schedule Routine Maintenance</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/filtration-stages.svg" alt="RO maintenance service Dharmapuri" width="500">
    </div>
  </div>

  <div style="margin-bottom: 3.5rem;">
    <h3 style="font-size: 1.45rem; color: var(--color-navy); margin-bottom: 1.25rem;">What Our Maintenance Service Includes</h3>
    <div class="services-grid" style="grid-template-columns: repeat(3, 1fr);">
      <div class="service-card">
        <div class="service-icon-box">&#128167;</div>
        <h4 class="service-title">Pre-Filter Flush &amp; Clean</h4>
        <p class="service-desc">Washing the sediment housing, clearing heavy silt and rust debris, and checking candle permeability.</p>
      </div>
      <div class="service-card">
        <div class="service-icon-box">&#129514;</div>
        <h4 class="service-title">TDS &amp; Flow Testing</h4>
        <p class="service-desc">Digital TDS calibration of raw feed water vs purified water to verify membrane rejection rate.</p>
      </div>
      <div class="service-card">
        <div class="service-icon-box">&#128736;</div>
        <h4 class="service-title">Tank Sanitization &amp; Auto-Cut</h4>
        <p class="service-desc">Cleaning interior storage tank surfaces and confirming proper float switch shutoff function.</p>
      </div>
    </div>
  </div>

  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Recommended Servicing Frequency</h3>
    <p>
      Depending on your daily water usage and raw water hardness in Dharmapuri, we recommend a routine inspection every 3 to 6 months. Timely pre-filter servicing directly extends the life of the more expensive RO membrane.
    </p>
    <a href="../ro-amc/" class="btn btn-secondary btn-sm">Explore Annual AMC Care &rarr;</a>
  </div>
</div>
"@

Build-Subpage `
  -folder "ro-maintenance" `
  -title "RO Maintenance in Dharmapuri | Routine Servicing | VARUN AQUA TECH" `
  -metaDesc "Schedule routine RO purifier servicing & maintenance in Dharmapuri & Bosinaickenhalli with VARUN AQUA TECH. Doorstep checkups, tank sanitization & TDS testing." `
  -canonical "https://varunaquatech.com/ro-maintenance/" `
  -h1 "RO Water Purifier Maintenance in Dharmapuri" `
  -subtitle "Routine Doorstep Servicing, Preventive Inspections & TDS Calibration" `
  -activeNav "service" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="RO Maintenance"; url=""}) `
  -mainContent $maintContent `
  -defaultService "RO Maintenance" `
  -defaultLocation "Dharmapuri"

# 6. RO AMC
$amcContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">Annual Protection</span>
      <h2>RO Annual Maintenance Contract (AMC) in Dharmapuri</h2>
      <p>
        An Annual Maintenance Contract (AMC) from VARUN AQUA TECH provides year-round peace of mind for your home or commercial RO system. Avoid unexpected breakdowns, erratic water quality, or neglected filter choking with regular scheduled service visits.
      </p>
      <p>
        Our AMC packages are designed specifically for customers across Dharmapuri, Bosinaickenhalli, and nearby areas seeking structured, reliable water purifier care throughout the year.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Ask About AMC Plans</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/hero-purifier.svg" alt="RO AMC services in Dharmapuri" width="500">
    </div>
  </div>

  <div style="margin-bottom: 3.5rem;">
    <h3 style="font-size: 1.45rem; color: var(--color-navy); margin-bottom: 1.25rem;">Why Consider an RO AMC?</h3>
    <div class="services-grid" style="grid-template-columns: repeat(3, 1fr);">
      <div class="service-card">
        <div class="service-icon-box">&#128197;</div>
        <h4 class="service-title">Scheduled Visits</h4>
        <p class="service-desc">Regular periodic inspection visits throughout the year without you having to remember service intervals.</p>
      </div>
      <div class="service-card">
        <div class="service-icon-box">&#128176;</div>
        <h4 class="service-title">Predictable Costs</h4>
        <p class="service-desc">Avoid surprise emergency expenses by covering routine servicing and inspections under an annual arrangement.</p>
      </div>
      <div class="service-card">
        <div class="service-icon-box">&#128222;</div>
        <h4 class="service-title">Priority Support</h4>
        <p class="service-desc">Prompt response when unforeseen leakages, electrical cuts, or water flow drops occur.</p>
      </div>
    </div>
  </div>

  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Domestic &amp; Commercial AMC Options</h3>
    <p>
      AMC solutions are available for domestic purifiers as well as high-capacity commercial plants (25 LPH, 50 LPH, 100+ LPH) in shops, offices, and institutions. Contact VARUN AQUA TECH directly to discuss terms based on your unit model and location.
    </p>
    <p style="margin-bottom: 0;">
      Call our AMC support desk at <a href="tel:$($global:NAP.PhoneTel)" style="color: var(--color-blue); font-weight: 700;">$($global:NAP.Phone)</a>.
    </p>
  </div>
</div>
"@

Build-Subpage `
  -folder "ro-amc" `
  -title "RO AMC in Dharmapuri | Annual Maintenance Contract | VARUN AQUA TECH" `
  -metaDesc "Inquire about RO AMC services in Dharmapuri & Bosinaickenhalli with VARUN AQUA TECH. Year-round maintenance contracts, scheduled visits & priority doorstep support." `
  -canonical "https://varunaquatech.com/ro-amc/" `
  -h1 "RO Annual Maintenance Contracts (AMC) in Dharmapuri" `
  -subtitle "Scheduled Servicing, Priority Doorstep Care & Year-Round Water Purity" `
  -activeNav "amc" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="RO AMC Services"; url=""}) `
  -mainContent $amcContent `
  -defaultService "AMC" `
  -defaultLocation "Dharmapuri"

# 7. FILTER & MEMBRANE REPLACEMENT
$filterContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">Genuine Consumables</span>
      <h2>RO Filter &amp; Membrane Replacement in Dharmapuri</h2>
      <p>
        The reverse osmosis membrane and pre-filter cartridges are the working heart of any water purification system. Over time, sediment traps become congested with mud and rust, carbon blocks reach adsorption saturation, and membrane pores accumulate mineral scale.
      </p>
      <p>
        VARUN AQUA TECH provides doorstep replacement of genuine sediment filters, carbon block cartridges, thin-film composite (TFC) RO membranes, and post-carbon minerals for purifiers across Dharmapuri.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Request Replacement</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/filter-cartridges.svg" alt="RO filter and membrane replacement in Dharmapuri" width="500">
    </div>
  </div>

  <div style="margin-bottom: 3.5rem;">
    <h3 style="font-size: 1.45rem; color: var(--color-navy); margin-bottom: 1.25rem;">Key Replacement Components</h3>
    <div class="services-grid" style="grid-template-columns: repeat(2, 1fr);">
      <div class="service-card">
        <h4 class="service-title">1. Spun Polypropylene Pre-Filter</h4>
        <p class="service-desc">
          Installed in the external bowl. Traps physical particles, sand, silt, and pipe rust larger than 5 microns to protect inner filters.
        </p>
      </div>
      <div class="service-card">
        <h4 class="service-title">2. Activated Carbon Block (CTO/GAC)</h4>
        <p class="service-desc">
          Adsorbs chlorine, pesticides, chemical impurities, foul odours, and volatile organic compounds that could damage the RO membrane.
        </p>
      </div>
      <div class="service-card">
        <h4 class="service-title">3. RO Membrane (75 / 80 / 100 GPD)</h4>
        <p class="service-desc">
          The core 0.0001-micron semi-permeable leaf that rejects dissolved heavy metals, fluorides, excess salts, and microbial contaminants.
        </p>
      </div>
      <div class="service-card">
        <h4 class="service-title">4. Post-Carbon &amp; Mineral Cartridge</h4>
        <p class="service-desc">
          Polishes water taste, balances natural pH, and replenishes essential minerals like calcium and magnesium for healthy drinking water.
        </p>
      </div>
    </div>
  </div>

  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">When Should You Replace Filters &amp; Membranes?</h3>
    <p>
      Replacement intervals vary depending on raw water hardness and usage volume. Rather than guessing, our technician measures input vs output TDS levels with a calibrated digital meter to accurately determine when replacement is truly necessary.
    </p>
    <a href="../ro-repair-guide/" class="btn btn-secondary btn-sm">Read Our Troubleshooting Guide &rarr;</a>
  </div>
</div>
"@

Build-Subpage `
  -folder "filter-membrane-replacement" `
  -title "RO Filter & Membrane Replacement in Dharmapuri | VARUN AQUA TECH" `
  -metaDesc "Doorstep replacement of RO filters, sediment cartridges, carbon blocks & RO membranes in Dharmapuri & Bosinaickenhalli. Call +91 88380 55968 for genuine spares." `
  -canonical "https://varunaquatech.com/filter-membrane-replacement/" `
  -h1 "RO Filter &amp; Membrane Replacement in Dharmapuri" `
  -subtitle "Genuine Pre-Filters, Carbon Blocks, RO Membranes &amp; Mineral Cartridges" `
  -activeNav "service" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="Filter & Membrane Replacement"; url=""}) `
  -mainContent $filterContent `
  -defaultService "Filter Replacement" `
  -defaultLocation "Dharmapuri"

# 8. COMMERCIAL RO DHARMAPURI
$commContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">Business &amp; Industrial</span>
      <h2>Commercial RO Water Purification Solutions in Dharmapuri</h2>
      <p>
        Commercial establishments, schools, hotels, hospitals, food outlets, and offices require high-volume purified water with continuous reliability. VARUN AQUA TECH provides commercial RO purifier sales, installation, repair, and ongoing maintenance support across Dharmapuri district.
      </p>
      <p>
        We configure commercial purification systems with robust FRP media vessels, high-pressure vertical booster pumps, rotameter flow meters, and stainless steel skid frames based on your specific daily consumption needs.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Discuss Commercial Requirements</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/commercial-plant.svg" alt="Commercial RO water purification solutions in Dharmapuri" width="500">
    </div>
  </div>

  <div style="margin-bottom: 3.5rem;">
    <h3 style="font-size: 1.45rem; color: var(--color-navy); margin-bottom: 1.25rem;">Commercial RO Configurations</h3>
    <div class="services-grid" style="grid-template-columns: repeat(3, 1fr);">
      <div class="service-card">
        <div class="service-icon-box">&#127970;</div>
        <h4 class="service-title">25 to 50 LPH Systems</h4>
        <p class="service-desc">Ideal for small clinics, offices with 10&ndash;30 staff, bakeries, cafes, and preschools.</p>
      </div>
      <div class="service-card">
        <div class="service-icon-box">&#127981;</div>
        <h4 class="service-title">100 to 250 LPH Plants</h4>
        <p class="service-desc">Tailored for restaurants, lodging hotels, schools, marriage halls, and commercial kitchens.</p>
      </div>
      <div class="service-card">
        <div class="service-icon-box">&#9881;</div>
        <h4 class="service-title">Custom Commercial Skids</h4>
        <p class="service-desc">Multi-membrane 4040/8040 setups with sand &amp; carbon media vessels for higher institutional needs.</p>
      </div>
    </div>
  </div>

  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Complete Commercial Lifecycle Support</h3>
    <p>
      From raw water testing and sizing to doorstep plumbing installation and commercial AMC servicing, VARUN AQUA TECH supports local enterprises with dependable clean water.
    </p>
    <p style="margin-bottom: 0;">
      Speak with our commercial RO team at <a href="tel:$($global:NAP.PhoneTel)" style="color: var(--color-blue); font-weight: 700;">$($global:NAP.Phone)</a>.
    </p>
  </div>
</div>
"@

Build-Subpage `
  -folder "commercial-ro-dharmapuri" `
  -title "Commercial RO in Dharmapuri | Water Purification Solutions | VARUN AQUA TECH" `
  -metaDesc "Commercial RO water purifiers in Dharmapuri. Sales, installation, maintenance & repair for offices, schools, restaurants & commercial establishments. Call +91 88380 55968." `
  -canonical "https://varunaquatech.com/commercial-ro-dharmapuri/" `
  -h1 "Commercial RO Water Purification Solutions in Dharmapuri" `
  -subtitle "High-Capacity Purification Plants, Doorstep Installation & Commercial AMC" `
  -activeNav "service" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="Commercial RO"; url=""}) `
  -mainContent $commContent `
  -defaultService "Commercial RO" `
  -defaultLocation "Dharmapuri"