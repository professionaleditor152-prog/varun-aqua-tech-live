. "d:\varun aqua tech website\tools\templates.ps1"

# 1. DISTRICT PILLAR PAGE
$districtPillarContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">Geographic Service Framework</span>
      <h2>District-Wide RO Purification Coverage</h2>
      <p>
        VARUN AQUA TECH provides RO water purifier sales, installation, repair, maintenance and replacement support from its base near Dharmapuri in Bosinaickenhalli. Service availability depends on location, requirement and scheduling.
      </p>
      <p>
        Covering an area of approximately 4,497 sq. km bordered by Krishnagiri, Salem, Tiruvannamalai, Villupuram, and Karnataka, Dharmapuri District features diverse water conditions. We organize our service logistics around the 7 official revenue taluks to ensure realistic, honest, and reliable doorstep response.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Check Service For Your Area</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/district-map.svg" alt="RO service areas in Dharmapuri district map" width="500">
    </div>
  </div>

  <!-- District Service Map & Taluk Grid -->
  <div style="margin-bottom: 3.5rem;">
    <div style="text-align: center; max-width: 760px; margin: 0 auto 2.5rem auto;">
      <span class="badge badge-aqua">7 Revenue Taluks</span>
      <h3 style="font-size: 1.6rem; color: var(--color-navy);">RO Service Areas in Dharmapuri District</h3>
      <p>
        Select your revenue taluk below to view localized service coverage, common water conditions, and contact details.
      </p>
    </div>

    <div class="taluk-grid">
      <div class="taluk-card">
        <span class="taluk-badge">Primary Base Hub</span>
        <h4 class="taluk-name">Dharmapuri Taluk</h4>
        <p class="taluk-coverage">Dharmapuri Town, Bosinaickenhalli, Harur Main Road, Hale Dharmapuri, and urban wards.</p>
        <a href="../ro-service-dharmapuri/" class="btn btn-secondary btn-sm" style="margin-top: auto;">Explore Taluk &rarr;</a>
        <div class="taluk-status">Doorstep Service Available</div>
      </div>

      <div class="taluk-card">
        <span class="taluk-badge">Direct Corridor</span>
        <h4 class="taluk-name">Harur Taluk</h4>
        <p class="taluk-coverage">Harur Town, Theerthamalai, Morappur along the direct Harur Main Road transit axis.</p>
        <a href="../ro-service-harur/" class="btn btn-secondary btn-sm" style="margin-top: auto;">Explore Taluk &rarr;</a>
        <div class="taluk-status">Service by Schedule</div>
      </div>

      <div class="taluk-card">
        <span class="taluk-badge">North-West Cluster</span>
        <h4 class="taluk-name">Palacode Taluk</h4>
        <p class="taluk-coverage">Palacode, Marandahalli, Pulikarai, and agricultural/residential clusters.</p>
        <a href="../ro-service-palacode/" class="btn btn-secondary btn-sm" style="margin-top: auto;">Explore Taluk &rarr;</a>
        <div class="taluk-status">Confirm Availability</div>
      </div>

      <div class="taluk-card">
        <span class="taluk-badge">North-Central Cluster</span>
        <h4 class="taluk-name">Karimangalam Taluk</h4>
        <p class="taluk-coverage">Karimangalam, Kambainallur, Periyanahalli, and surrounding village areas.</p>
        <a href="../ro-service-karimangalam/" class="btn btn-secondary btn-sm" style="margin-top: auto;">Explore Taluk &rarr;</a>
        <div class="taluk-status">Confirm Availability</div>
      </div>

      <div class="taluk-card">
        <span class="taluk-badge">West River Cluster</span>
        <h4 class="taluk-name">Pennagaram Taluk</h4>
        <p class="taluk-coverage">Pennagaram, Perumbalai, Papparapatti, and nearby river basin settlements.</p>
        <a href="../ro-service-pennagaram/" class="btn btn-secondary btn-sm" style="margin-top: auto;">Explore Taluk &rarr;</a>
        <div class="taluk-status">Service by Prior Schedule</div>
      </div>

      <div class="taluk-card">
        <span class="taluk-badge">South-West NH44 Cluster</span>
        <h4 class="taluk-name">Nallampalli Taluk</h4>
        <p class="taluk-coverage">Nallampalli, Thoppur, and Salem-Dharmapuri highway corridor communities.</p>
        <a href="../ro-service-nallampalli/" class="btn btn-secondary btn-sm" style="margin-top: auto;">Explore Taluk &rarr;</a>
        <div class="taluk-status">Confirm Availability</div>
      </div>

      <div class="taluk-card">
        <span class="taluk-badge">South-East Cluster</span>
        <h4 class="taluk-name">Pappireddipatti Taluk</h4>
        <p class="taluk-coverage">Pappireddipatti, Thenkaraikottai, Kadathur, and rural panchayat areas.</p>
        <a href="../ro-service-pappireddipatti/" class="btn btn-secondary btn-sm" style="margin-top: auto;">Explore Taluk &rarr;</a>
        <div class="taluk-status">Confirm Availability</div>
      </div>
    </div>
  </div>

  <!-- User-Facing District Location Table -->
  <div style="margin-bottom: 3.5rem;">
    <h3 style="font-size: 1.45rem; color: var(--color-navy); margin-bottom: 1rem;">District Service Availability Matrix</h3>
    <p>
      In accordance with our honest service policy, we outline actual service availability rather than claiming automatic instant response in every village:
    </p>

    <div class="data-table-container">
      <table class="data-table">
        <thead>
          <tr>
            <th>Taluk / Area</th>
            <th>Operational Hub</th>
            <th>Service Availability</th>
            <th>Primary Services Offered</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><strong>Dharmapuri Taluk</strong></td>
            <td>Bosinaickenhalli (Base)</td>
            <td><span style="color: var(--color-success); font-weight: 700;">&#10003; Direct Doorstep</span></td>
            <td>Sales, Installation, Repair, Maintenance, Filter Change, AMC</td>
          </tr>
          <tr>
            <td><strong>Harur Taluk</strong></td>
            <td>Harur Corridor</td>
            <td>Confirm with business</td>
            <td>Domestic &amp; Commercial RO, Repairs, Filter Replacement</td>
          </tr>
          <tr>
            <td><strong>Palacode Taluk</strong></td>
            <td>Palacode Cluster</td>
            <td>Confirm with business</td>
            <td>Sales, Installation, Repair, Maintenance</td>
          </tr>
          <tr>
            <td><strong>Karimangalam Taluk</strong></td>
            <td>Karimangalam Cluster</td>
            <td>Confirm with business</td>
            <td>RO Services, Filter Spares, Installation</td>
          </tr>
          <tr>
            <td><strong>Pennagaram Taluk</strong></td>
            <td>Pennagaram Cluster</td>
            <td>Confirm with business</td>
            <td>RO Purifier Servicing, Membrane Replacement</td>
          </tr>
          <tr>
            <td><strong>Nallampalli Taluk</strong></td>
            <td>Nallampalli Cluster</td>
            <td>Confirm with business</td>
            <td>RO Repair, Maintenance, Domestic RO</td>
          </tr>
          <tr>
            <td><strong>Pappireddipatti Taluk</strong></td>
            <td>Pappireddipatti Cluster</td>
            <td>Confirm with business</td>
            <td>RO Services, AMC, Filter Replacement</td>
          </tr>
        </tbody>
      </table>
    </div>
    <p style="font-size: 0.85rem; color: var(--color-text-muted);">
      * Note: Timelines and travel logistics depend on technician schedule and exact destination. Contact our team to confirm.
    </p>
  </div>
</div>
"@

Build-Subpage `
  -folder "ro-service-dharmapuri-district" `
  -title "RO Water Purifier Service in Dharmapuri District | VARUN AQUA TECH" `
  -metaDesc "VARUN AQUA TECH provides RO purifier sales, installation, repair, maintenance, AMC, filter and membrane replacement support across Dharmapuri and selected nearby areas." `
  -canonical "https://varunaquatech.com/ro-service-dharmapuri-district/" `
  -h1 "RO Water Purifier Sales &amp; Service Across Dharmapuri District" `
  -subtitle "Structured Service Coverage Across 7 Revenue Taluks from Our Bosinaickenhalli Base" `
  -activeNav "district" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="Dharmapuri District Coverage"; url=""}) `
  -mainContent $districtPillarContent `
  -defaultService "RO Service" `
  -defaultLocation "Dharmapuri District"

# 2. DISTRICT HUB DIRECTORY (/dharmapuri/)
$dharmapuriHubContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div style="text-align: center; max-width: 760px; margin: 0 auto 3rem auto;">
    <span class="badge badge-aqua">Geographic Directory</span>
    <h2>VARUN AQUA TECH &mdash; RO Water Purifier Services in Dharmapuri District</h2>
    <p>
      Explore our localized service coverage across the seven administrative revenue taluks of Dharmapuri District.
    </p>
  </div>

  <div class="services-grid" style="grid-template-columns: repeat(2, 1fr); margin-bottom: 3.5rem;">
    <div class="service-card">
      <h3 class="service-title">&#128205; Dharmapuri Taluk</h3>
      <p class="service-desc">
        Our primary base located at India1 ATM, Harur Main Road in Bosinaickenhalli. Full domestic and commercial sales, emergency repairs, doorstep installations, and filter changes.
      </p>
      <a href="../ro-service-dharmapuri/" class="btn btn-secondary btn-sm">Dharmapuri Taluk Details &rarr;</a>
    </div>

    <div class="service-card">
      <h3 class="service-title">&#128205; Harur Taluk</h3>
      <p class="service-desc">
        Directly connected along Harur Main Road corridor. Doorstep service for Harur, Morappur, Theerthamalai, and surrounding communities by prior appointment.
      </p>
      <a href="../ro-service-harur/" class="btn btn-secondary btn-sm">Harur Taluk Details &rarr;</a>
    </div>

    <div class="service-card">
      <h3 class="service-title">&#128205; Palacode Taluk</h3>
      <p class="service-desc">
        Serving residential and agricultural communities across Palacode, Marandahalli, and Pulikarai with tailored RO solutions for borewell water.
      </p>
      <a href="../ro-service-palacode/" class="btn btn-secondary btn-sm">Palacode Taluk Details &rarr;</a>
    </div>

    <div class="service-card">
      <h3 class="service-title">&#128205; Karimangalam Taluk</h3>
      <p class="service-desc">
        Supporting households and businesses in Karimangalam, Kambainallur, and Periyanahalli with purifier installation, repair, and filter maintenance.
      </p>
      <a href="../ro-service-karimangalam/" class="btn btn-secondary btn-sm">Karimangalam Taluk Details &rarr;</a>
    </div>

    <div class="service-card">
      <h3 class="service-title">&#128205; Pennagaram Taluk</h3>
      <p class="service-desc">
        Water purifier service for Pennagaram, Perumbalai, and Papparapatti. Membrane replacement and TDS balance for diverse surface and groundwater sources.
      </p>
      <a href="../ro-service-pennagaram/" class="btn btn-secondary btn-sm">Pennagaram Taluk Details &rarr;</a>
    </div>

    <div class="service-card">
      <h3 class="service-title">&#128205; Nallampalli Taluk</h3>
      <p class="service-desc">
        Convenient access along the NH44 Salem-Dharmapuri highway belt. Scheduled doorstep filter replacement, installation, and routine maintenance.
      </p>
      <a href="../ro-service-nallampalli/" class="btn btn-secondary btn-sm">Nallampalli Taluk Details &rarr;</a>
    </div>

    <div class="service-card">
      <h3 class="service-title">&#128205; Pappireddipatti Taluk</h3>
      <p class="service-desc">
        Serving Pappireddipatti, Thenkaraikottai, and Kadathur areas with practical domestic RO solutions, AMC care, and diagnostic support.
      </p>
      <a href="../ro-service-pappireddipatti/" class="btn btn-secondary btn-sm">Pappireddipatti Taluk Details &rarr;</a>
    </div>

    <div class="service-card" style="background-color: var(--color-bg-light); border: 2px dashed var(--color-blue);">
      <h3 class="service-title">&#128203; District Pillar Hub</h3>
      <p class="service-desc">
        Review our complete district service coverage framework, transit logistics, and water purification guidelines.
      </p>
      <a href="../ro-service-dharmapuri-district/" class="btn btn-primary btn-sm">View Full District Pillar &rarr;</a>
    </div>
  </div>
</div>
"@

Build-Subpage `
  -folder "dharmapuri" `
  -title "RO Water Purifier Services in Dharmapuri District | VARUN AQUA TECH" `
  -metaDesc "Explore VARUN AQUA TECH RO water purifier services across Dharmapuri District: Dharmapuri, Harur, Palacode, Pennagaram, Nallampalli, Karimangalam, Pappireddipatti." `
  -canonical "https://varunaquatech.com/dharmapuri/" `
  -h1 "VARUN AQUA TECH — RO Water Purifier Services in Dharmapuri District" `
  -subtitle "Directory of Revenue Taluks & Dedicated Local Service Areas" `
  -activeNav "district" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="Dharmapuri District Directory"; url=""}) `
  -mainContent $dharmapuriHubContent `
  -defaultService "RO Service" `
  -defaultLocation "Dharmapuri"