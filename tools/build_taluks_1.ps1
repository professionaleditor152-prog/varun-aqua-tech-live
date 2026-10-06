. "d:\varun aqua tech website\tools\templates.ps1"

# 1. DHARMAPURI TALUK
$dharmapuriContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">Base Operational Taluk</span>
      <h2>RO Water Purifier Service in Dharmapuri</h2>
      <p>
        VARUN AQUA TECH is located within Dharmapuri taluk at Bosinaickenhalli on Harur Main Road, right near India1 ATM. Because our primary sales and service center is based here, customers throughout Dharmapuri town and surrounding wards receive our fastest doorstep support.
      </p>
      <p>
        Whether you are facing water leakage, low dispensing flow, clogged sediment filters, or require a brand new domestic RO purifier installed in your home, our team provides transparent, reliable service led by founder <strong>Selvam .V</strong>.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Book Dharmapuri Service</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/ro-service-technician-filters.jpg" alt="RO Water Purifier Service in Dharmapuri by VARUN AQUA TECH" width="540" height="380" style="border-radius: var(--radius-xl); object-fit: cover; width: 100%; box-shadow: var(--shadow-md);">
    </div>
  </div>

  <div style="margin-bottom: 3.5rem;">
    <h3 style="font-size: 1.45rem; color: var(--color-navy); margin-bottom: 1.25rem;">Available Services in Dharmapuri Taluk</h3>
    <div class="services-grid" style="grid-template-columns: repeat(3, 1fr);">
      <div class="service-card">
        <h4 class="service-title">&#128167; RO Purifier Sales</h4>
        <p class="service-desc">Domestic wall-mounted units and commercial purifiers sized for local borewell and tap water TDS &mdash; Free Installation Included.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">&#128295; Doorstep Installation</h4>
        <p class="service-desc">Standard and custom unboxing, wall mounting, pre-filter bowl fixing, and plumbing integration.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">&#9881; Repair &amp; Troubleshooting</h4>
        <p class="service-desc">Rapid diagnostic inspection for power failure, auto-cut issues, leaking joints, and noisy booster pumps.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">&#128736; Routine Maintenance</h4>
        <p class="service-desc">Periodic system servicing, tank sanitization, pressure checkups, and digital TDS testing.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">&#128260; Filter &amp; Membrane Change</h4>
        <p class="service-desc">Replacement of spun sediment candles, activated carbon, and thin-film reverse osmosis membranes.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">&#128203; Domestic &amp; Commercial AMC</h4>
        <p class="service-desc">Annual maintenance packages with scheduled visits for continuous water purity.</p>
      </div>
    </div>
  </div>

  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem; margin-bottom: 3rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Local Service Coverage &amp; Transit Details</h3>
    <p>
      From our base on Harur Main Road in Bosinaickenhalli, we directly cover Dharmapuri town, Hale Dharmapuri, Collectorate area, Railway Station zone, Mathikonpalayam, Bharathipuram, Virupakshipuram, and nearby residential developments.
    </p>
    <p>
      <strong>Before Requesting Service:</strong> Please note whether your purifier has power reaching the socket and whether raw water is flowing into the pre-filter bowl. This helps our technician bring the appropriate replacement spares on the first visit.
    </p>
  </div>
</div>
"@

Build-Subpage `
  -folder "ro-service-dharmapuri" `
  -title "RO Water Purifier Service in Dharmapuri | VARUN AQUA TECH" `
  -metaDesc "RO water purifier sales, installation, repair, maintenance & filter replacement in Dharmapuri & Bosinaickenhalli. Doorstep service across town. Call +91 88380 55968." `
  -canonical "https://varunaquatech.com/ro-service-dharmapuri/" `
  -h1 "RO Water Purifier Service in Dharmapuri" `
  -subtitle "Sales, Doorstep Installation, Repair, Maintenance &amp; AMC Across Dharmapuri Town" `
  -activeNav "district" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="District Areas"; url="../ro-service-dharmapuri-district/"}, @{label="Dharmapuri Taluk"; url=""}) `
  -mainContent $dharmapuriContent `
  -defaultService "RO Service" `
  -defaultLocation "Dharmapuri Town"

# 2. HARUR TALUK
$harurContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">Corridor Service Area</span>
      <h2>RO Water Purifier Service in Harur</h2>
      <p>
        VARUN AQUA TECH provides RO water purifier sales, installation, repair and maintenance support for customers in Harur and nearby areas along the Harur Main Road corridor, subject to service availability.
      </p>
      <p>
        Because our service center in Bosinaickenhalli is situated directly along Harur Main Road, our service technicians regularly travel this primary arterial route to attend scheduled installations, commercial system maintenance, and residential filter replacements in Harur taluk.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Inquire About Harur Service</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/service-installation.jpg" alt="RO service Harur Dharmapuri by VARUN AQUA TECH" width="540" height="380" style="border-radius: var(--radius-xl); object-fit: cover; width: 100%; box-shadow: var(--shadow-md);">
    </div>
  </div>

  <div style="margin-bottom: 3.5rem;">
    <h3 style="font-size: 1.45rem; color: var(--color-navy); margin-bottom: 1.25rem;">Water Conditions &amp; Service Needs in Harur</h3>
    <p>
      Many residential pockets and commercial establishments in Harur, Morappur, and Theerthamalai depend on deep borewells drilled through crystalline granitic formations. In these zones, groundwater often carries moderate-to-high dissolved solids that lead to rapid scaling of RO membrane sheets if sediment pre-filtration is neglected.
    </p>
    <div class="services-grid" style="grid-template-columns: repeat(2, 1fr); margin-top: 1.5rem;">
      <div class="service-card">
        <h4 class="service-title">Domestic Water Purification</h4>
        <p class="service-desc">Tailored home purifiers with high-TDS rejection membranes for families in Harur town and surrounding villages.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Doorstep Filter Replacement</h4>
        <p class="service-desc">Periodic replacement of clogged sediment cartridges, carbon blocks, and inline mineral filters.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Commercial RO Systems</h4>
        <p class="service-desc">Purification setups for educational institutions, bakeries, tea shops, and medical clinics in Harur.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Scheduled Repair Visits</h4>
        <p class="service-desc">Resolution of booster pump humming, water dripping from fittings, and power adapter failures.</p>
      </div>
    </div>
  </div>

  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Service Scheduling for Harur Customers</h3>
    <p>
      VARUN AQUA TECH operates from its physical center in Bosinaickenhalli near Dharmapuri. We do not maintain a separate branch in Harur; rather, we provide on-site mobile service visits along the Harur corridor.
    </p>
    <p style="margin-bottom: 0;">
      To schedule a doorstep visit in Harur, call our team in advance at <a href="tel:$($global:NAP.PhoneTel)" style="color: var(--color-blue); font-weight: 700;">$($global:NAP.Phone)</a> so we can align our technician's route.
    </p>
  </div>
</div>
"@

Build-Subpage `
  -folder "ro-service-harur" `
  -title "RO Water Purifier Service in Harur | VARUN AQUA TECH" `
  -metaDesc "RO water purifier sales, installation, repair and maintenance for customers in Harur, Morappur and nearby areas from VARUN AQUA TECH. Call +91 88380 55968." `
  -canonical "https://varunaquatech.com/ro-service-harur/" `
  -h1 "RO Water Purifier Service in Harur" `
  -subtitle "Doorstep RO Purifier Sales, Installation, Repair &amp; Maintenance in Harur Taluk" `
  -activeNav "district" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="District Areas"; url="../ro-service-dharmapuri-district/"}, @{label="Harur Taluk"; url=""}) `
  -mainContent $harurContent `
  -defaultService "RO Service" `
  -defaultLocation "Harur"

# 3. PALACODE TALUK
$palacodeContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">North-West Cluster</span>
      <h2>RO Water Purifier Service in Palacode</h2>
      <p>
        VARUN AQUA TECH provides RO water purifier sales, installation, repair and maintenance support for customers in Palacode and nearby areas, subject to service availability.
      </p>
      <p>
        As one of Dharmapuri's key revenue taluks comprising Marandahalli, Pulikarai, and Vellichanthai firkas, Palacode combines bustling town settlements with extensive agricultural belts where clean drinking water is vital for homes and commercial setups.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Inquire About Palacode Service</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/service-repair.jpg" alt="RO Water Purifier Service in Palacode by VARUN AQUA TECH" width="540" height="380" style="border-radius: var(--radius-xl); object-fit: cover; width: 100%; box-shadow: var(--shadow-md);">
    </div>
  </div>

  <div style="margin-bottom: 3.5rem;">
    <h3 style="font-size: 1.45rem; color: var(--color-navy); margin-bottom: 1.25rem;">Water Purification Solutions for Palacode</h3>
    <p>
      Agricultural runoff, seasonal water table fluctuations, and deep borewell mineral concentrations in Palacode often lead to fine sediment ingress and scale accumulation on membrane leaves. We provide:
    </p>
    <div class="services-grid" style="grid-template-columns: repeat(2, 1fr); margin-top: 1.5rem;">
      <div class="service-card">
        <h4 class="service-title">Sediment Pre-Filtration</h4>
        <p class="service-desc">Heavy-duty external filter bowls with spun polypropylene candles to capture silt and red mud before reaching the purifier.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">High TDS Membrane Replacement</h4>
        <p class="service-desc">Thin-film composite (TFC) RO membranes engineered to reduce high mineral salinity and restore crisp drinking water taste.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">New Purifier Installation</h4>
        <p class="service-desc">Proper mounting and plumbing connections for new domestic purifiers in Palacode and Marandahalli homes.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Commercial System Support</h4>
        <p class="service-desc">Sizing and servicing commercial RO plants for food businesses, educational centres, and local packaging units.</p>
      </div>
    </div>
  </div>

  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Service Information for Palacode Customers</h3>
    <p>
      All services are dispatched from our center near Dharmapuri in Bosinaickenhalli. We schedule visits based on customer requirements and route coordination.
    </p>
    <p style="margin-bottom: 0;">
      Contact VARUN AQUA TECH at <a href="tel:$($global:NAP.PhoneTel)" style="color: var(--color-blue); font-weight: 700;">$($global:NAP.Phone)</a> to confirm availability and schedule an on-site visit.
    </p>
  </div>
</div>
"@

Build-Subpage `
  -folder "ro-service-palacode" `
  -title "RO Water Purifier Service in Palacode | VARUN AQUA TECH" `
  -metaDesc "RO water purifier sales, installation, repair and maintenance support for customers in Palacode, Marandahalli & Pulikarai from VARUN AQUA TECH. Call +91 88380 55968." `
  -canonical "https://varunaquatech.com/ro-service-palacode/" `
  -h1 "RO Water Purifier Service in Palacode" `
  -subtitle "Doorstep Sales, Installation, Repair &amp; Maintenance in Palacode Taluk" `
  -activeNav "district" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="District Areas"; url="../ro-service-dharmapuri-district/"}, @{label="Palacode Taluk"; url=""}) `
  -mainContent $palacodeContent `
  -defaultService "RO Service" `
  -defaultLocation "Palacode"

# 4. PENNAGARAM TALUK
$pennagaramContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">West River Basin</span>
      <h2>RO Water Purifier Service in Pennagaram</h2>
      <p>
        VARUN AQUA TECH provides RO water purifier sales, installation, repair and maintenance support for customers in Pennagaram and nearby areas, subject to service availability.
      </p>
      <p>
        Pennagaram taluk spans Pennagaram town, Perumbalai, and Papparapatti toward the Cauvery river basin and Hogenakkal zone. Water sources across this taluk vary significantly between surface river schemes and deep local borewells.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Inquire About Pennagaram Service</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/water-tds-testing.jpg" alt="RO Water Purifier Service in Pennagaram by VARUN AQUA TECH" width="540" height="380" style="border-radius: var(--radius-xl); object-fit: cover; width: 100%; box-shadow: var(--shadow-md);">
    </div>
  </div>

  <div style="margin-bottom: 3.5rem;">
    <h3 style="font-size: 1.45rem; color: var(--color-navy); margin-bottom: 1.25rem;">Water Solutions in Pennagaram Taluk</h3>
    <div class="services-grid" style="grid-template-columns: repeat(2, 1fr);">
      <div class="service-card">
        <h4 class="service-title">Domestic RO Installation</h4>
        <p class="service-desc">Complete mounting, plumbing hookup, and reject drainage setup for homes in Pennagaram and Papparapatti.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">RO Membrane &amp; Filter Care</h4>
        <p class="service-desc">Replacing exhausted sediment cartridges, inline carbon, and semi-permeable membranes to maintain clean output.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Purifier Diagnostics &amp; Repair</h4>
        <p class="service-desc">Inspection of non-functioning booster pumps, leaking tubes, float valve cutoff failure, and adapter issues.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Commercial Purification</h4>
        <p class="service-desc">High-capacity RO installations for hospitality lodgings, schools, eateries, and public establishments.</p>
      </div>
    </div>
  </div>

  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Service Coordination for Pennagaram</h3>
    <p>
      Doorstep service is provided from our main facility in Bosinaickenhalli near Dharmapuri. Because of the travel distance to parts of Pennagaram and Papparapatti, we coordinate visits in advance to ensure our technicians have the required cartridges, membranes, and fittings on hand.
    </p>
    <p style="margin-bottom: 0;">
      Please call <a href="tel:$($global:NAP.PhoneTel)" style="color: var(--color-blue); font-weight: 700;">$($global:NAP.Phone)</a> to confirm scheduling for your address.
    </p>
  </div>
</div>
"@

Build-Subpage `
  -folder "ro-service-pennagaram" `
  -title "RO Water Purifier Service in Pennagaram | VARUN AQUA TECH" `
  -metaDesc "RO water purifier sales, installation, repair and maintenance for customers in Pennagaram, Perumbalai & Papparapatti from VARUN AQUA TECH. Call +91 88380 55968." `
  -canonical "https://varunaquatech.com/ro-service-pennagaram/" `
  -h1 "RO Water Purifier Service in Pennagaram" `
  -subtitle "Doorstep Sales, Installation, Repair &amp; Maintenance in Pennagaram Taluk" `
  -activeNav "district" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="District Areas"; url="../ro-service-dharmapuri-district/"}, @{label="Pennagaram Taluk"; url=""}) `
  -mainContent $pennagaramContent `
  -defaultService "RO Service" `
  -defaultLocation "Pennagaram"