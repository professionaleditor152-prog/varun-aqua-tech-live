. "d:\varun aqua tech website\tools\templates.ps1"

# 1. RO BUYING GUIDE
$buyingContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">Educational Guide</span>
      <h2>A Practical Guide to Water Quality, TDS &amp; Purifier Selection in Dharmapuri</h2>
      <p style="font-size: 1.05rem; line-height: 1.8;">
        Choosing the right water purifier in Dharmapuri requires understanding your water source. Because groundwater characteristics vary dramatically between borewells, open wells, and municipal Cauvery connections across the district, no single purification technology fits every home.
      </p>
      <p>
        At VARUN AQUA TECH, we believe in assessing water quality before recommending equipment. Here is what you should consider before purchasing an RO water purifier.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Request Free TDS Assessment</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/water-tds-testing.jpg" alt="Testing Water TDS for RO Purifier Selection in Dharmapuri" width="540" height="380" style="border-radius: var(--radius-xl); object-fit: cover; width: 100%; box-shadow: var(--shadow-md);">
    </div>
  </div>

  <!-- Section 1: Water Source & TDS -->
  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem; margin-bottom: 3rem;">
    <h3 style="font-size: 1.4rem; color: var(--color-navy); margin-bottom: 1rem;">1. Understanding Your Water Source &amp; TDS Level</h3>
    <p>
      <strong>Total Dissolved Solids (TDS)</strong> measures the combined concentration of inorganic salts (calcium, magnesium, potassium, sodium, chlorides, and sulfates) and organic matter dissolved in water, expressed in parts per million (ppm) or mg/L.
    </p>
    <div class="data-table-container">
      <table class="data-table">
        <thead>
          <tr>
            <th>Water Source</th>
            <th>Typical TDS in Dharmapuri</th>
            <th>Recommended Filtration Technology</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><strong>Cauvery / Municipal Tap Water</strong></td>
            <td>150 &ndash; 300 ppm</td>
            <td>UV + UF or Mild TDS RO if biological contamination is a concern</td>
          </tr>
          <tr>
            <td><strong>Shallow Borewell / Open Well</strong></td>
            <td>300 &ndash; 800 ppm</td>
            <td>Multi-stage RO + Pre-Carbon + Sediment Filter</td>
          </tr>
          <tr>
            <td><strong>Deep Borewell (Hard Water)</strong></td>
            <td>800 &ndash; 2000+ ppm</td>
            <td>High-TDS Reverse Osmosis (RO) with Mineral Balancer</td>
          </tr>
        </tbody>
      </table>
    </div>
    <p style="font-size: 0.9rem; color: var(--color-text-muted);">
      * Note: We strongly advise testing your raw water TDS with a digital meter before investing in a purifier. Contact our team for an on-site water assessment.
    </p>
  </div>

  <!-- Section 2: Multi-Stage Filtration Breakdown -->
  <div style="margin-bottom: 3.5rem;">
    <h3 style="font-size: 1.4rem; color: var(--color-navy); margin-bottom: 1.25rem;">2. How the Purification Stages Work</h3>
    <div class="services-grid" style="grid-template-columns: repeat(2, 1fr);">
      <div class="service-card">
        <h4 class="service-title">Stage 1: Pre-Sediment Filter</h4>
        <p class="service-desc">Traps visible particulates, silt, sand, and pipe rust larger than 5 microns to prevent clogging downstream filters.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Stage 2: Activated Carbon (Pre-Carbon)</h4>
        <p class="service-desc">Adsorbs dissolved chlorine, bad odours, pesticides, and organic compounds that can damage the delicate RO membrane.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Stage 3: Reverse Osmosis Membrane</h4>
        <p class="service-desc">The primary barrier (0.0001 micron pore size) that separates dissolved heavy metals, fluorides, excess salts, and microbial matter.</p>
      </div>
      <div class="service-card">
        <h4 class="service-title">Stage 4: Post-Carbon / Mineral Cartridge</h4>
        <p class="service-desc">Restores essential minerals and enhances the natural sweet taste of the purified drinking water.</p>
      </div>
    </div>
  </div>

  <!-- Section 3: Sizing and Responsible Water Usage -->
  <div class="split-section" style="margin-bottom: 3rem; background: var(--color-white); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.25rem; box-shadow: var(--shadow-sm);">
    <div>
      <h3 style="font-size: 1.4rem; color: var(--color-navy); margin-bottom: 1rem;">3. Tank Sizing &amp; Reject Water Management</h3>
      <p>
        For a typical family of 3 to 6 members, a storage tank capacity of 7 to 10 liters with an 8 to 12 LPH purification rate is generally ideal.
      </p>
      <p>
        <strong>Responsible Water Use:</strong> Reverse osmosis inherently separates purified water from concentrated reject water. We encourage Dharmapuri households to route the reject drainage pipe into collection buckets or utility drains for floor cleaning, dish pre-rinsing, or gardening rather than allowing it to go to waste.
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="../ro-water-purifier-sales/" class="btn btn-primary">Explore Available RO Purifiers &rarr;</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/bele-water-purifier.jpg" alt="Domestic Wall-Mounted RO Purifier System" width="480" height="320" style="border-radius: var(--radius-lg); object-fit: cover; width: 100%; box-shadow: var(--shadow-sm);">
    </div>
  </div>
</div>
"@

Build-Subpage `
  -folder "ro-water-purifier-buying-guide-dharmapuri" `
  -title "How to Choose an RO Water Purifier in Dharmapuri | Buying Guide | VARUN AQUA TECH" `
  -metaDesc "Comprehensive guide to choosing an RO water purifier in Dharmapuri: water sources, TDS levels, household size, multi-stage filtration, reject water management." `
  -canonical "https://varunaquatech.com/ro-water-purifier-buying-guide-dharmapuri/" `
  -h1 "How to Choose an RO Water Purifier in Dharmapuri" `
  -subtitle "A Practical Guide to Water Quality, TDS, Filtration Stages &amp; Purifier Selection" `
  -activeNav "guides" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="RO Buying Guide"; url=""}) `
  -mainContent $buyingContent `
  -defaultService "New RO Purifier" `
  -defaultLocation "Dharmapuri"

# 2. RO REPAIR GUIDE
$repairGuideContent = @"
<div style="max-width: 950px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">Technical Support Hub</span>
      <h2>RO Purifier Troubleshooting &amp; Diagnostic Guide</h2>
      <p style="font-size: 1.05rem; line-height: 1.8;">
        When an RO water purifier malfunctions, understanding the common warning signs can help you identify whether a simple maintenance step is required or whether professional doorstep diagnostic inspection is needed.
      </p>
      <p>
        <em>Note: Multiple factors can contribute to any fault. Our team can assess the system and recommend the appropriate service on-site.</em>
      </p>
      <div style="margin-top: 1.5rem;">
        <a href="#service-form" class="btn btn-primary">Book Diagnostic Visit</a>
      </div>
    </div>
    <div class="split-visual">
      <img src="../assets/service-repair.jpg" alt="RO Purifier Troubleshooting and Diagnostics by VARUN AQUA TECH" width="540" height="380" style="border-radius: var(--radius-xl); object-fit: cover; width: 100%; box-shadow: var(--shadow-md);">
    </div>
  </div>

  <!-- Troubleshooting Symptoms -->
  <div style="margin-bottom: 3.5rem;">
    <div class="service-card" style="margin-bottom: 2rem;">
      <h3 style="color: var(--color-navy); margin-bottom: 0.75rem;">1. Why Is My RO Purifier Not Working At All?</h3>
      <p>
        If the purifier does not turn on, no lights are illuminated, and the booster pump does not run, possible areas requiring technical assessment include:
      </p>
      <ul class="checklist">
        <li><span class="check">&#10003;</span> <strong>Power Supply / SMPS:</strong> The 24V or 36V DC electrical adapter may have suffered a voltage surge.</li>
        <li><span class="check">&#10003;</span> <strong>Low Pressure Switch (LPS):</strong> If incoming raw water pressure is too low, the LPS shuts off the system to prevent dry-run pump damage.</li>
        <li><span class="check">&#10003;</span> <strong>Storage Tank Float Switch:</strong> A jammed or faulty microswitch can falsely signal that the storage tank is already full.</li>
        <li><span class="check">&#10003;</span> <strong>Choked Pre-Filters:</strong> Complete sediment blockage can drop inlet pressure below operating threshold.</li>
      </ul>
    </div>

    <div class="service-card" style="margin-bottom: 2rem;">
      <h3 style="color: var(--color-navy); margin-bottom: 0.75rem;">2. Why Is My RO Water Flow Low or Filling Slowly?</h3>
      <p>
        A gradual decline in purified water delivery is one of the most frequent customer complaints in Dharmapuri:
      </p>
      <ul class="checklist">
        <li><span class="check">&#10003;</span> <strong>Sediment Filter Congestion:</strong> Raw silt and pipe mud restrict raw water feed volume.</li>
        <li><span class="check">&#10003;</span> <strong>Scaled RO Membrane:</strong> Dissolved mineral buildup inside the microscopic membrane pores restricts permeate flow.</li>
        <li><span class="check">&#10003;</span> <strong>Weak Booster Pump Pressure:</strong> Worn pump diaphragms or low voltage reduce the necessary pressure (typically 60&ndash;80 psi) needed for reverse osmosis.</li>
        <li><span class="check">&#10003;</span> <strong>Low Feed Water Pressure:</strong> Low overhead tank water level or partially closed feed valve.</li>
      </ul>
    </div>

    <div class="service-card" style="margin-bottom: 2rem;">
      <h3 style="color: var(--color-navy); margin-bottom: 0.75rem;">3. Why Is My RO Purifier Leaking Water?</h3>
      <p>
        Water dripping inside the cabinet or around external bowls can cause damage if ignored:
      </p>
      <ul class="checklist">
        <li><span class="check">&#10003;</span> <strong>Pre-Filter Bowl O-Ring:</strong> Rubber seal drying, misalignment, or micro-cracks in the plastic bowl.</li>
        <li><span class="check">&#10003;</span> <strong>Push-Fit Quick Connectors:</strong> High internal pressure or vibration can loosen plastic collet clips.</li>
        <li><span class="check">&#10003;</span> <strong>Membrane Housing Cap:</strong> Thread leakage or warped gasket rings under sustained booster pressure.</li>
      </ul>
    </div>

    <div class="service-card">
      <h3 style="color: var(--color-navy); margin-bottom: 0.75rem;">4. Why Does Reject Water Run Continuously?</h3>
      <p>
        If water flows continuously into the drain even after the purified water tank is completely filled, the internal Solenoid Valve (SV) or Auto-Shut-Off Valve (ASOV) may have failed, allowing feed water to pass unchecked.
      </p>
    </div>
  </div>

  <!-- Genuine Spares Showcase -->
  <div class="split-section" style="margin-bottom: 3rem; background: var(--color-white); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.25rem; box-shadow: var(--shadow-sm);">
    <div>
      <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Tested Genuine Components</h3>
      <p>
        When replacing components during service visits, our technicians use factory-tested booster pumps, food-grade solenoid valves, and high-rejection membranes to ensure long-term durability.
      </p>
      <ul class="checklist">
        <li><span class="check">&#10003;</span> Heavy-duty booster pumps with pressure testing</li>
        <li><span class="check">&#10003;</span> Certified food-grade inline filter cartridges</li>
        <li><span class="check">&#10003;</span> Calibrated digital TDS measurement before &amp; after</li>
      </ul>
    </div>
    <div class="split-visual">
      <img src="../assets/ro-spare-parts.jpg" alt="Genuine Spare Parts Used During Diagnostic Repair" width="480" height="320" style="border-radius: var(--radius-lg); object-fit: cover; width: 100%; box-shadow: var(--shadow-sm);">
    </div>
  </div>

  <!-- Safe Checks Before Calling -->
  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Basic Checks Before Requesting Service</h3>
    <ul class="checklist">
      <li><span class="check">&#10003;</span> Verify that the power outlet has electricity and the switch is on.</li>
      <li><span class="check">&#10003;</span> Ensure the main water inlet ball valve is fully open.</li>
      <li><span class="check">&#10003;</span> Check that the reject water pipe is not kinked, crushed, or submerged.</li>
    </ul>
    <p style="margin-top: 1.25rem; margin-bottom: 0;">
      Do not attempt to open electrical adapters or pressurized pump heads without proper tools. Contact VARUN AQUA TECH at <a href="tel:$($global:NAP.PhoneTel)" style="color: var(--color-blue); font-weight: 700;">$($global:NAP.Phone)</a> for doorstep technical assessment.
    </p>
  </div>
</div>
"@

Build-Subpage `
  -folder "ro-repair-guide" `
  -title "RO Repair & Troubleshooting Guide | Common Purifier Problems | VARUN AQUA TECH" `
  -metaDesc "Learn why your RO purifier is not working, leaking, or has low water flow. Practical troubleshooting guide and diagnostic assessment for Dharmapuri homes." `
  -canonical "https://varunaquatech.com/ro-repair-guide/" `
  -h1 "RO Purifier Repair &amp; Troubleshooting Guide" `
  -subtitle "Understanding Common Symptoms, Safe Checks &amp; When to Call a Technician" `
  -activeNav "guides" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="RO Repair Guide"; url=""}) `
  -mainContent $repairGuideContent `
  -defaultService "RO Repair" `
  -defaultLocation "Dharmapuri"