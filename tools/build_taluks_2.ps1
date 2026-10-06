. "d:\varun aqua tech website\tools\templates.ps1"

# 5. NALLAMPALLI TALUK
$nallampalliContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">NH44 Highway Corridor</span>
      <h2>RO Water Purifier Service in Nallampalli</h2>
      <p>
        VARUN AQUA TECH provides RO water purifier sales, installation, repair and maintenance support for customers in Nallampalli and nearby areas, subject to service availability.
      </p>
      <p>
        Situated south of Dharmapuri along the major NH44 arterial highway connecting Dharmapuri and Salem, Nallampalli taluk includes Thoppur, Laligam, and surrounding semi-urban villages. Its direct highway connectivity facilitates efficient service dispatch from our center in Bosinaickenhalli.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Inquire About Nallampalli Service</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/service-amc.jpg" alt="RO Water Purifier Service in Nallampalli by VARUN AQUA TECH" width="540" height="380" style="border-radius: var(--radius-xl); object-fit: cover; width: 100%; box-shadow: var(--shadow-md);">
    </div>
  </div>

  <div style="margin-bottom: 3.5rem;">
    <h3 style="font-size: 1.45rem; color: var(--color-navy); margin-bottom: 1.25rem;">RO Services Provided in Nallampalli Taluk</h3>
    <div class="services-grid" style="grid-template-columns: repeat(2, 1fr);">
      <div class="service-card">
        <h4 class="service-title">Domestic Purifier Sales &amp; Setup</h4>
        <p class="service-desc">Quality domestic RO water purifiers configured for residential homes with high borewell mineral levels &mdash; Free Doorstep Installation.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Doorstep Filter Replacement</h4>
        <p class="service-desc">Regular replacement of clogged sediment candles, activated carbon cartridges, and mineral enrichers.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Purifier Diagnostics &amp; Repair</h4>
        <p class="service-desc">Troubleshooting slow filtration, noisy booster motors, water dripping from fittings, or adapter burnouts.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Highway Commercial RO</h4>
        <p class="service-desc">Water purification systems for highway motels, eateries, tea stalls, and educational campuses along the NH44 belt.</p>
      </div>
    </div>
  </div>

  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Service Coordination for Nallampalli Customers</h3>
    <p>
      VARUN AQUA TECH is based at India1 ATM, Harur Main Road in Bosinaickenhalli near Dharmapuri. We provide doorstep service visits throughout Nallampalli taluk based on advance scheduling.
    </p>
    <p style="margin-bottom: 0;">
      To book an appointment, call <a href="tel:$($global:NAP.PhoneTel)" style="color: var(--color-blue); font-weight: 700;">$($global:NAP.Phone)</a> or message us on WhatsApp.
    </p>
  </div>
</div>
"@

Build-Subpage `
  -folder "ro-service-nallampalli" `
  -title "RO Water Purifier Service in Nallampalli | VARUN AQUA TECH" `
  -metaDesc "RO water purifier sales, installation, repair and maintenance support for customers in Nallampalli and NH44 corridor from VARUN AQUA TECH. Call +91 88380 55968." `
  -canonical "https://varunaquatech.com/ro-service-nallampalli/" `
  -h1 "RO Water Purifier Service in Nallampalli" `
  -subtitle "Doorstep Sales, Installation, Repair &amp; Maintenance in Nallampalli Taluk" `
  -activeNav "district" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="District Areas"; url="../ro-service-dharmapuri-district/"}, @{label="Nallampalli Taluk"; url=""}) `
  -mainContent $nallampalliContent `
  -defaultService "RO Service" `
  -defaultLocation "Nallampalli"

# 6. KARIMANGALAM TALUK
$karimangalamContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">North-Central Cluster</span>
      <h2>RO Water Purifier Service in Karimangalam</h2>
      <p>
        VARUN AQUA TECH provides RO water purifier sales, installation, repair and maintenance support for customers in Karimangalam and nearby areas, subject to service availability.
      </p>
      <p>
        Encompassing Karimangalam town, Kambainallur, and Periyanahalli, this taluk is an important agricultural and commercial center situated north of Dharmapuri. We provide local residents and businesses with practical water treatment and RO servicing.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Inquire About Karimangalam Service</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/service-maintenance.jpg" alt="RO Water Purifier Service in Karimangalam by VARUN AQUA TECH" width="540" height="380" style="border-radius: var(--radius-xl); object-fit: cover; width: 100%; box-shadow: var(--shadow-md);">
    </div>
  </div>

  <div style="margin-bottom: 3.5rem;">
    <h3 style="font-size: 1.45rem; color: var(--color-navy); margin-bottom: 1.25rem;">Purification Solutions for Karimangalam Taluk</h3>
    <div class="services-grid" style="grid-template-columns: repeat(2, 1fr);">
      <div class="service-card">
        <h4 class="service-title">Domestic RO Installation</h4>
        <p class="service-desc">Proper mounting and plumbing integration for home purifiers in Karimangalam and Kambainallur.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Membrane &amp; Cartridge Spares</h4>
        <p class="service-desc">Replacement of fouled RO membranes, pre-carbon cartridges, and spun PP sediment filters.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Doorstep Fault Diagnosis</h4>
        <p class="service-desc">Checking power switches, auto-shutoff floats, pump vibration, and water leakage issues.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Commercial RO Support</h4>
        <p class="service-desc">Service and maintenance for commercial water purifiers in shops, clinics, schools, and offices.</p>
      </div>
    </div>
  </div>

  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Service Booking for Karimangalam</h3>
    <p>
      Visits to Karimangalam taluk are coordinated from our central location in Bosinaickenhalli near Dharmapuri. We schedule doorstep service trips to ensure timely arrival and proper replacement parts.
    </p>
    <p style="margin-bottom: 0;">
      Please contact us at <a href="tel:$($global:NAP.PhoneTel)" style="color: var(--color-blue); font-weight: 700;">$($global:NAP.Phone)</a> to confirm availability for your area.
    </p>
  </div>
</div>
"@

Build-Subpage `
  -folder "ro-service-karimangalam" `
  -title "RO Water Purifier Service in Karimangalam | VARUN AQUA TECH" `
  -metaDesc "RO water purifier sales, installation, repair and maintenance for customers in Karimangalam, Kambainallur & Periyanahalli from VARUN AQUA TECH. Call +91 88380 55968." `
  -canonical "https://varunaquatech.com/ro-service-karimangalam/" `
  -h1 "RO Water Purifier Service in Karimangalam" `
  -subtitle "Doorstep Sales, Installation, Repair &amp; Maintenance in Karimangalam Taluk" `
  -activeNav "district" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="District Areas"; url="../ro-service-dharmapuri-district/"}, @{label="Karimangalam Taluk"; url=""}) `
  -mainContent $karimangalamContent `
  -defaultService "RO Service" `
  -defaultLocation "Karimangalam"

# 7. PAPPIREDDIPATTI TALUK
$pappireddipattiContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">South-East Cluster</span>
      <h2>RO Water Purifier Service in Pappireddipatti</h2>
      <p>
        VARUN AQUA TECH provides RO water purifier sales, installation, repair and maintenance support for customers in Pappireddipatti and nearby areas, subject to service availability.
      </p>
      <p>
        Covering Pappireddipatti town, Thenkaraikottai, Kadathur, and the surrounding agricultural hinterland, this taluk relies predominantly on borewell groundwater with varying mineral hardness and seasonal sediment levels.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Inquire About Pappireddipatti Service</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/service-sales.jpg" alt="RO Water Purifier Service in Pappireddipatti by VARUN AQUA TECH" width="540" height="380" style="border-radius: var(--radius-xl); object-fit: cover; width: 100%; box-shadow: var(--shadow-md);">
    </div>
  </div>

  <div style="margin-bottom: 3.5rem;">
    <h3 style="font-size: 1.45rem; color: var(--color-navy); margin-bottom: 1.25rem;">RO Water Purifier Services in Pappireddipatti</h3>
    <div class="services-grid" style="grid-template-columns: repeat(2, 1fr);">
      <div class="service-card">
        <h4 class="service-title">Domestic RO Water Purifiers</h4>
        <p class="service-desc">Multi-stage purification units designed to handle hard borewell water and ensure palatable drinking water.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Pre-Filter &amp; Membrane Change</h4>
        <p class="service-desc">Doorstep replacement of clogged spun candles, carbon blocks, and reverse osmosis membrane elements.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">RO Breakdown Repair</h4>
        <p class="service-desc">Troubleshooting electrical adapters, low-pressure switches, pump cutouts, and pipe leakage.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Commercial Sizing &amp; AMC</h4>
        <p class="service-desc">Purification solutions for schools, marriage halls, commercial kitchens, and shops in Kadathur and Pappireddipatti.</p>
      </div>
    </div>
  </div>

  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Service Coordination for Pappireddipatti</h3>
    <p>
      VARUN AQUA TECH operates from its physical center at India1 ATM, Harur Main Road, Bosinaickenhalli near Dharmapuri. Doorstep service in Pappireddipatti is scheduled in advance to ensure our technicians have the right consumables on hand.
    </p>
    <p style="margin-bottom: 0;">
      Call our support team at <a href="tel:$($global:NAP.PhoneTel)" style="color: var(--color-blue); font-weight: 700;">$($global:NAP.Phone)</a> to confirm availability and schedule your visit.
    </p>
  </div>
</div>
"@

Build-Subpage `
  -folder "ro-service-pappireddipatti" `
  -title "RO Water Purifier Service in Pappireddipatti | VARUN AQUA TECH" `
  -metaDesc "RO water purifier sales, installation, repair and maintenance for customers in Pappireddipatti, Thenkaraikottai & Kadathur from VARUN AQUA TECH. Call +91 88380 55968." `
  -canonical "https://varunaquatech.com/ro-service-pappireddipatti/" `
  -h1 "RO Water Purifier Service in Pappireddipatti" `
  -subtitle "Doorstep Sales, Installation, Repair &amp; Maintenance in Pappireddipatti Taluk" `
  -activeNav "district" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="District Areas"; url="../ro-service-dharmapuri-district/"}, @{label="Pappireddipatti Taluk"; url=""}) `
  -mainContent $pappireddipattiContent `
  -defaultService "RO Service" `
  -defaultLocation "Pappireddipatti"