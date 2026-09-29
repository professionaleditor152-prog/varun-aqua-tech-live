. "d:\varun aqua tech website\tools\templates.ps1"

# 1. ABOUT PAGE
$aboutContent = @"
<div style="max-width: 900px; margin: 0 auto;">
  <div class="split-section" style="margin-bottom: 3.5rem;">
    <div>
      <span class="badge badge-aqua">Our Mission &amp; Approach</span>
      <h2>Dedicated RO Water Purification Specialists</h2>
      <p>
        VARUN AQUA TECH is a specialized RO water purifier sales and service center established near Dharmapuri in Bosinaickenhalli on Harur Main Road. We provide comprehensive water purification solutions for households, shops, offices, and commercial establishments.
      </p>
      <p>
        Our business was created to give local residents and businesses a reliable, approachable, and technically sound alternative to generic repair services. We focus specifically on reverse osmosis (RO) systems, water treatment filtration, and genuine consumable components.
      </p>
    </div>
    <div class="split-visual">
      <img src="../assets/filtration-stages.svg" alt="VARUN AQUA TECH RO water purifier service in Dharmapuri" width="500">
    </div>
  </div>

  <div style="margin-bottom: 3.5rem;">
    <h3 style="font-size: 1.5rem; color: var(--color-navy); margin-bottom: 1rem;">Understanding Water Conditions in Dharmapuri</h3>
    <p>
      Dharmapuri district features diverse geological and hydrological zones. In many residential areas and surrounding taluks, households rely heavily on deep borewells where groundwater exhibits elevated Total Dissolved Solids (TDS), calcium and magnesium hardness, and trace minerals. Other localities receive Cauvery or municipal water supplies with varying seasonal characteristics.
    </p>
    <p>
      At VARUN AQUA TECH, we do not believe in a one-size-fits-all approach. Before recommending a domestic or commercial water purifier, we evaluate the water source, measured TDS, and daily volume needs so the purification system delivers optimal taste and mineral balance without unnecessary wastage.
    </p>
  </div>

  <div class="services-grid" style="grid-template-columns: repeat(3, 1fr); margin-bottom: 3.5rem;">
    <div class="service-card">
      <div class="service-icon-box">&#128167;</div>
      <h4 class="service-title">Pure Water Focus</h4>
      <p class="service-desc">Tailored multi-stage filtration designed for local raw water quality and balanced TDS.</p>
    </div>
    <div class="service-card">
      <div class="service-icon-box">&#9881;</div>
      <h4 class="service-title">Professional Support</h4>
      <p class="service-desc">Practical diagnostics, disciplined installation, and proper doorstep repair protocols.</p>
    </div>
    <div class="service-card">
      <div class="service-icon-box">&#128205;</div>
      <h4 class="service-title">Local Accessibility</h4>
      <p class="service-desc">Conveniently located at India1 ATM, Harur Main Road in Bosinaickenhalli with 24-hour phone support.</p>
    </div>
  </div>

  <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-xl); padding: 2.5rem; margin-bottom: 3rem;">
    <h3 style="font-size: 1.35rem; color: var(--color-navy); margin-bottom: 1rem;">Our Operating Principles</h3>
    <ul class="checklist">
      <li><span class="check">&#10003;</span> <strong>Clear Diagnostics:</strong> We inspect systems thoroughly to assess leaks, pump issues, or cartridge choking before recommending repairs.</li>
      <li><span class="check">&#10003;</span> <strong>Genuine Filter Spares:</strong> We utilize reliable sediment filters, carbon blocks, thin-film membranes, and fittings.</li>
      <li><span class="check">&#10003;</span> <strong>Realistic Communication:</strong> We do not make unsupported claims or remote diagnoses. Our team assesses your setup transparently.</li>
      <li><span class="check">&#10003;</span> <strong>Doorstep Service:</strong> We provide on-site technical support across Dharmapuri, Bosinaickenhalli, and scheduled service areas.</li>
    </ul>
  </div>
</div>
"@

Build-Subpage `
  -folder "about" `
  -title "About VARUN AQUA TECH | RO Water Purifier Specialists in Dharmapuri" `
  -metaDesc "Learn about VARUN AQUA TECH, an RO water purifier sales and service center based near Dharmapuri in Bosinaickenhalli, Tamil Nadu. Doorstep service & genuine support." `
  -canonical "https://varunaquatech.com/about/" `
  -h1 "About VARUN AQUA TECH" `
  -subtitle "Pure Water. Professional Service. Local Expertise in Dharmapuri." `
  -activeNav "about" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="About VARUN AQUA TECH"; url=""}) `
  -mainContent $aboutContent `
  -defaultService "RO Service" `
  -defaultLocation "Dharmapuri"

# 2. CONTACT PAGE
$contactContent = @"
<div style="max-width: 1000px; margin: 0 auto;">
  <div class="location-card-grid" style="margin-bottom: 3.5rem;">
    <div class="location-info-card">
      <div>
        <span class="badge badge-aqua">Direct Contact Information</span>
        <h3 style="font-size: 1.45rem; color: var(--color-navy); margin-bottom: 1.5rem;">
          Get in Touch With Our Center
        </h3>

        <div class="nap-item">
          <div class="nap-icon">&#128205;</div>
          <div class="nap-detail">
            <h4>Physical Address</h4>
            <p>$($global:NAP.FullAddress)</p>
          </div>
        </div>

        <div class="nap-item">
          <div class="nap-icon">&#128222;</div>
          <div class="nap-detail">
            <h4>Telephone (Direct Line)</h4>
            <p><a href="tel:$($global:NAP.PhoneTel)" style="color: var(--color-blue); font-weight: 700; font-size: 1.05rem;">$($global:NAP.Phone)</a></p>
          </div>
        </div>

        <div class="nap-item">
          <div class="nap-icon">&#128339;</div>
          <div class="nap-detail">
            <h4>Operating Hours</h4>
            <p>$($global:NAP.Hours)</p>
          </div>
        </div>

        <div class="nap-item">
          <div class="nap-icon">&#128506;</div>
          <div class="nap-detail">
            <h4>Primary Service Area</h4>
            <p>Dharmapuri, Bosinaickenhalli, Harur Main Road, and surrounding revenue taluks of Dharmapuri District.</p>
          </div>
        </div>
      </div>

      <div class="btn-group" style="margin-top: 1.5rem;">
        <a href="tel:$($global:NAP.PhoneTel)" class="btn btn-primary">&#128222; Call Now</a>
        <a href="$($global:NAP.WhatsApp)" class="btn btn-whatsapp" target="_blank" rel="noopener">&#128172; WhatsApp Us</a>
        <a href="$($global:NAP.MapsUrl)" class="btn btn-secondary" target="_blank" rel="noopener">Get Driving Directions</a>
      </div>
    </div>

    <div class="google-profile-card">
      <div>
        <div class="gbp-badge"><span>&#11088;</span> Google Business Profile</div>
        <h3 class="gbp-title">Find Us on Google Maps</h3>
        <p style="color: #D9ECF5; font-size: 0.95rem; line-height: 1.7;">
          Use our verified Google listing for exact GPS navigation to our center at India1 ATM on Harur Main Road in Bosinaickenhalli.
        </p>
        <div class="gbp-hours-badge">&#10003; Open 24 Hours &mdash; Monday to Sunday</div>
        <div style="background: rgba(0,0,0,0.25); border-radius: 8px; padding: 1rem; margin-top: 1rem; font-size: 0.85rem; color: #B3DAE8;">
          <strong>Center Location:</strong><br>
          India1 ATM, Harur Main Road, near Dharmapuri, Bosinaickenhalli, Tamil Nadu &ndash; 635303
        </div>
      </div>

      <div style="margin-top: 1.75rem;">
        <a href="$($global:NAP.MapsUrl)" class="btn btn-aqua btn-full" target="_blank" rel="noopener">
          View Genuine Google Profile &rarr;
        </a>
      </div>
    </div>
  </div>
</div>
"@

Build-Subpage `
  -folder "contact" `
  -title "Contact VARUN AQUA TECH | RO Service in Dharmapuri | Phone & Location" `
  -metaDesc "Contact VARUN AQUA TECH for RO water purifier sales, installation, repair & maintenance in Dharmapuri, Bosinaickenhalli. Call +91 88380 55968 or visit Harur Main Road." `
  -canonical "https://varunaquatech.com/contact/" `
  -h1 "Contact VARUN AQUA TECH" `
  -subtitle "RO Water Purifier Sales & Service Center — Bosinaickenhalli, Dharmapuri" `
  -activeNav "contact" `
  -breadcrumbs @(@{label="Home"; url="../"}, @{label="Contact VARUN AQUA TECH"; url=""}) `
  -mainContent $contactContent `
  -defaultService "RO Service" `
  -defaultLocation "Dharmapuri"