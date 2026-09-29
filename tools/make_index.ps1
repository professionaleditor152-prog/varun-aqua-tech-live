. "d:\varun aqua tech website\tools\templates.ps1"

$head = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>RO Water Purifier Sales &amp; Service in Dharmapuri | VARUN AQUA TECH</title>
  <meta name="description" content="VARUN AQUA TECH provides RO water purifier sales, installation, repair, maintenance, AMC and filter replacement services in Dharmapuri, Bosinaickenhalli and nearby areas. Call +91 88380 55968.">
  <link rel="canonical" href="https://varunaquatech.com/">
  
  <meta property="og:title" content="RO Water Purifier Sales &amp; Service in Dharmapuri | VARUN AQUA TECH">
  <meta property="og:description" content="VARUN AQUA TECH provides RO water purifier sales, installation, repair, maintenance, AMC and filter replacement services in Dharmapuri, Bosinaickenhalli and nearby areas. Call +91 88380 55968.">
  <meta property="og:type" content="website">
  <meta property="og:url" content="https://varunaquatech.com/">
  
  <link rel="icon" type="image/svg+xml" href="assets/favicon.svg">
  <link rel="stylesheet" href="css/style.css">
  
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@graph": [
      {
        "@type": "LocalBusiness",
        "@id": "https://varunaquatech.com/#business",
        "name": "VARUN AQUA TECH",
        "image": "https://varunaquatech.com/assets/logo.svg",
        "telephone": "+918838055968",
        "priceRange": "$$",
        "address": {
          "@type": "PostalAddress",
          "streetAddress": "India1 ATM, Harur Main Road, Bosinaickenhalli",
          "addressLocality": "near Dharmapuri",
          "addressRegion": "Tamil Nadu",
          "postalCode": "635303",
          "addressCountry": "IN"
        },
        "geo": {
          "@type": "GeoCoordinates",
          "latitude": "12.128",
          "longitude": "78.163"
        },
        "openingHoursSpecification": {
          "@type": "OpeningHoursSpecification",
          "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
          "opens": "00:00",
          "closes": "23:59"
        },
        "areaServed": [
          "Dharmapuri",
          "Bosinaickenhalli",
          "Harur Main Road",
          "Harur",
          "Palacode",
          "Pennagaram",
          "Nallampalli",
          "Karimangalam",
          "Pappireddipatti"
        ]
      },
      {
        "@type": "WebSite",
        "@id": "https://varunaquatech.com/#website",
        "url": "https://varunaquatech.com/",
        "name": "VARUN AQUA TECH",
        "publisher": {"@id": "https://varunaquatech.com/#business"}
      },
      {
        "@type": "FAQPage",
        "@id": "https://varunaquatech.com/#faq",
        "mainEntity": [
          {
            "@type": "Question",
            "name": "Do you provide RO service in Dharmapuri?",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "VARUN AQUA TECH provides RO purifier sales, installation, repair and maintenance support in Dharmapuri and selected nearby areas. Contact the team to confirm service availability for your location."
            }
          },
          {
            "@type": "Question",
            "name": "Do you provide doorstep RO service?",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "Doorstep support may be available depending on the service requirement and location. Contact VARUN AQUA TECH to confirm availability."
            }
          },
          {
            "@type": "Question",
            "name": "Do you service RO purifiers outside Dharmapuri town?",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "Service may be available in selected surrounding areas and other parts of Dharmapuri district. Confirm your location before booking."
            }
          },
          {
            "@type": "Question",
            "name": "Do you provide RO installation?",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "Yes. RO installation is one of the services offered by VARUN AQUA TECH."
            }
          },
          {
            "@type": "Question",
            "name": "Do you provide filter replacement?",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "Yes. Filter and membrane replacement support is available when required."
            }
          },
          {
            "@type": "Question",
            "name": "Do you provide AMC?",
            "acceptedAnswer": {
              "@type": "Answer",
              "text": "AMC services are offered. Contact VARUN AQUA TECH for current AMC details and availability."
            }
          }
        ]
      }
    ]
  }
  </script>
</head>
<body>
"@

$header = Get-Header -relPath "" -activeNav "home"
$body1 = @"
  <main id="main-content">
    <!-- Hero Section -->
    <section class="hero-section">
      <div class="container">
        <div class="hero-grid">
          <div class="hero-content">
            <div class="hero-badge-container">
              <span class="badge badge-aqua">Pure Water • Professional Service • Local Expertise</span>
            </div>
            <h1 class="hero-title">Pure Water. Professional RO Solutions in Dharmapuri.</h1>
            <p class="hero-subtitle">RO Water Purifier Sales, Installation &amp; Service in Dharmapuri</p>
            <p class="hero-description">
              VARUN AQUA TECH provides RO water purifier sales, installation, repair, maintenance and doorstep service for domestic and commercial requirements in Dharmapuri and nearby areas.
            </p>
            
            <div class="hero-ctas">
              <a href="#contact-lead-section" class="btn btn-primary btn-lg">Book RO Service</a>
              <a href="tel:$($global:NAP.PhoneTel)" class="btn btn-secondary btn-lg">&#128222; Call $($global:NAP.Phone)</a>
              <a href="$($global:NAP.WhatsApp)" class="btn btn-whatsapp btn-lg" target="_blank" rel="noopener">&#128172; WhatsApp Us</a>
            </div>

            <div class="hero-trust-points">
              <div class="trust-item"><span class="trust-check">&#10003;</span> Domestic &amp; Commercial RO</div>
              <div class="trust-item"><span class="trust-check">&#10003;</span> Installation &amp; Doorstep Support</div>
              <div class="trust-item"><span class="trust-check">&#10003;</span> Repair, Maintenance &amp; AMC</div>
            </div>
          </div>

          <div class="hero-visual">
            <img src="assets/hero-purifier.svg" alt="VARUN AQUA TECH RO water purifier service in Dharmapuri" width="540" height="460">
          </div>
        </div>
      </div>
    </section>

    <!-- Local Location Badge Ribbon -->
    <section class="location-ribbon" aria-label="Service Area Notice">
      <div class="container">
        <div class="location-ribbon-content">
          <div class="ribbon-label">
            <span>&#128205;</span> Serving Dharmapuri &amp; Nearby Areas
          </div>
          <div class="ribbon-areas">
            Bosinaickenhalli <span>&bull;</span> Harur Main Road <span>&bull;</span> Dharmapuri
          </div>
        </div>
      </div>
    </section>

    <!-- Primary Services Section -->
    <section class="section" id="services">
      <div class="container">
        <div class="section-header">
          <span class="badge badge-aqua">Our Core Solutions</span>
          <h2>Complete RO Water Purifier Solutions</h2>
          <p>
            From choosing a new RO purifier to installation, repair and ongoing maintenance, VARUN AQUA TECH provides practical water purification solutions for homes and businesses.
          </p>
        </div>

        <div class="services-grid">
          <div class="service-card">
            <div class="service-icon-box">&#128167;</div>
            <h3 class="service-title">RO Water Purifier Sales</h3>
            <p class="service-desc">Domestic and commercial RO purifier solutions based on customer requirements.</p>
            <a href="ro-water-purifier-sales/" class="btn btn-secondary btn-sm">Explore RO Solutions &rarr;</a>
          </div>

          <div class="service-card">
            <div class="service-icon-box">&#128295;</div>
            <h3 class="service-title">RO Installation</h3>
            <p class="service-desc">Professional installation and doorstep support for RO water purification systems.</p>
            <a href="ro-installation/" class="btn btn-secondary btn-sm">Book Installation &rarr;</a>
          </div>

          <div class="service-card">
            <div class="service-icon-box">&#9881;</div>
            <h3 class="service-title">RO Repair &amp; Service</h3>
            <p class="service-desc">Troubleshooting and service for RO water purifier problems.</p>
            <a href="ro-repair/" class="btn btn-secondary btn-sm">Book RO Repair &rarr;</a>
          </div>

          <div class="service-card">
            <div class="service-icon-box">&#128736;</div>
            <h3 class="service-title">RO Maintenance</h3>
            <p class="service-desc">Routine servicing and maintenance to help keep RO systems operating properly.</p>
            <a href="ro-maintenance/" class="btn btn-secondary btn-sm">Schedule Maintenance &rarr;</a>
          </div>

          <div class="service-card">
            <div class="service-icon-box">&#128203;</div>
            <h3 class="service-title">AMC Services</h3>
            <p class="service-desc">Annual maintenance solutions for customers looking for ongoing RO system care.</p>
            <a href="ro-amc/" class="btn btn-secondary btn-sm">Ask About AMC &rarr;</a>
          </div>

          <div class="service-card">
            <div class="service-icon-box">&#128260;</div>
            <h3 class="service-title">Filter &amp; Membrane Replacement</h3>
            <p class="service-desc">Replacement of filters and RO membranes when required.</p>
            <a href="filter-membrane-replacement/" class="btn btn-secondary btn-sm">Request Replacement &rarr;</a>
          </div>
        </div>
      </div>
    </section>

    <!-- Problem-Solution Section -->
    <section class="section trouble-section" id="troubleshooting">
      <div class="container">
        <div class="section-header">
          <span class="badge badge-navy">Diagnostics &amp; Repair</span>
          <h2 class="text-white">Is Your RO Purifier Giving You Trouble?</h2>
          <p class="text-white" style="color: #B3DAE8;">
            Select the issue you are experiencing with your water purifier below. Our team can assess the system and recommend the appropriate service.
          </p>
        </div>

        <div class="trouble-grid">
          <div class="trouble-card" data-issue="Water leakage">
            <div class="trouble-card-header"><span class="trouble-icon">&#128167;</span><span class="trouble-indicator"></span></div>
            <div class="trouble-name">Water leakage</div>
            <div class="trouble-note">Fittings, housing or connector seepage</div>
          </div>
          <div class="trouble-card" data-issue="Low water flow">
            <div class="trouble-card-header"><span class="trouble-icon">&#9203;</span><span class="trouble-indicator"></span></div>
            <div class="trouble-name">Low water flow</div>
            <div class="trouble-note">Slow tank fill or low dispensing speed</div>
          </div>
          <div class="trouble-card" data-issue="Blocked filters">
            <div class="trouble-card-header"><span class="trouble-icon">&#128683;</span><span class="trouble-indicator"></span></div>
            <div class="trouble-name">Blocked filters</div>
            <div class="trouble-note">Clogged sediment or carbon cartridge</div>
          </div>
          <div class="trouble-card" data-issue="Filter replacement">
            <div class="trouble-card-header"><span class="trouble-icon">&#128260;</span><span class="trouble-indicator"></span></div>
            <div class="trouble-name">Filter replacement</div>
            <div class="trouble-note">Periodic consumable filter change</div>
          </div>
          <div class="trouble-card" data-issue="Membrane replacement">
            <div class="trouble-card-header"><span class="trouble-icon">&#128300;</span><span class="trouble-indicator"></span></div>
            <div class="trouble-name">Membrane replacement</div>
            <div class="trouble-note">TDS rejection decline or scaling</div>
          </div>
          <div class="trouble-card" data-issue="RO not working">
            <div class="trouble-card-header"><span class="trouble-icon">&#9888;</span><span class="trouble-indicator"></span></div>
            <div class="trouble-name">RO not working</div>
            <div class="trouble-note">No power, pump stoppage or electrical fault</div>
          </div>
          <div class="trouble-card" data-issue="Poor purification performance">
            <div class="trouble-card-header"><span class="trouble-icon">&#129514;</span><span class="trouble-indicator"></span></div>
            <div class="trouble-name">Poor purification performance</div>
            <div class="trouble-note">Taste alteration or elevated TDS</div>
          </div>
          <div class="trouble-card" data-issue="Maintenance requirement">
            <div class="trouble-card-header"><span class="trouble-icon">&#128203;</span><span class="trouble-indicator"></span></div>
            <div class="trouble-name">Maintenance requirement</div>
            <div class="trouble-note">General health check &amp; sanitation</div>
          </div>
        </div>

        <div class="trouble-action-box">
          <div class="trouble-action-text">
            <h4>Ready to get your system checked?</h4>
            <p>Our team can assess the system and recommend the appropriate service for your location in Dharmapuri.</p>
          </div>
          <div class="btn-group">
            <a href="#contact-lead-section" class="btn btn-aqua btn-lg">Get RO Service</a>
            <a href="tel:$($global:NAP.PhoneTel)" class="btn btn-outline-white btn-lg">Call $($global:NAP.Phone)</a>
          </div>
        </div>
      </div>
    </section>
"@
$body2 = @"
    <!-- Why VARUN AQUA TECH -->
    <section class="section section-bg-light" id="about-split">
      <div class="container">
        <div class="split-section">
          <div class="split-visual">
            <img src="assets/filtration-stages.svg" alt="VARUN AQUA TECH RO water purifier service in Dharmapuri Tamil Nadu" width="600" height="380">
          </div>

          <div class="split-content">
            <span class="badge badge-aqua">Why Choose Us</span>
            <h2>RO Solutions With Local Service Support</h2>
            <h3 style="font-size: 1.15rem; color: var(--color-blue); margin-top: 0.5rem; margin-bottom: 1rem;">
              Professional RO Support for Homes &amp; Businesses
            </h3>
            <p>
              VARUN AQUA TECH provides RO purifier sales, installation, doorstep support, repairs, maintenance and replacement services for domestic and commercial customers in Dharmapuri and surrounding areas.
            </p>

            <div class="split-features">
              <div class="feature-pill"><span class="icon">&#127968;</span> Domestic &amp; commercial RO solutions</div>
              <div class="feature-pill"><span class="icon">&#128682;</span> Doorstep service</div>
              <div class="feature-pill"><span class="icon">&#128295;</span> Installation support</div>
              <div class="feature-pill"><span class="icon">&#9881;</span> Repair &amp; maintenance</div>
              <div class="feature-pill"><span class="icon">&#128260;</span> Filter replacement</div>
              <div class="feature-pill"><span class="icon">&#128300;</span> Membrane replacement</div>
              <div class="feature-pill"><span class="icon">&#128203;</span> AMC services</div>
              <div class="feature-pill"><span class="icon">&#128205;</span> Local Dharmapuri presence</div>
            </div>

            <a href="#contact-lead-section" class="btn btn-primary">Book Doorstep Service</a>
          </div>
        </div>
      </div>
    </section>

    <!-- How It Works -->
    <section class="section" id="how-it-works">
      <div class="container">
        <div class="section-header">
          <span class="badge badge-aqua">Simple Process</span>
          <h2>How It Works</h2>
          <p>Getting your RO purifier sorted with VARUN AQUA TECH is straightforward and practical.</p>
        </div>

        <div class="steps-grid">
          <div class="step-card">
            <div class="step-number">01</div>
            <h3 class="step-title">Contact Us</h3>
            <p class="step-desc">Reach out directly via phone or WhatsApp:</p>
            <p style="font-weight: 700; color: var(--color-navy); margin-top: 0.5rem;">
              Call or WhatsApp: <a href="tel:$($global:NAP.PhoneTel)" style="color: var(--color-blue);">$($global:NAP.Phone)</a>
            </p>
          </div>

          <div class="step-card">
            <div class="step-number">02</div>
            <h3 class="step-title">Tell Us Your Requirement</h3>
            <p class="step-desc">Tell us whether you need:</p>
            <ul>
              <li>New RO purifier</li>
              <li>Installation</li>
              <li>Repair</li>
              <li>Maintenance</li>
              <li>Filter replacement</li>
              <li>Membrane replacement</li>
              <li>AMC</li>
            </ul>
          </div>

          <div class="step-card">
            <div class="step-number">03</div>
            <h3 class="step-title">Get the Required Support</h3>
            <p class="step-desc">Arrange the appropriate sales, installation, repair or maintenance service at your doorstep or location.</p>
            <div style="margin-top: 1.5rem;">
              <a href="#contact-lead-section" class="btn btn-primary btn-sm">Book Your Service</a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Domestic & Commercial Sections -->
    <section class="section section-bg-light" id="domestic-ro">
      <div class="container">
        <div class="segment-box">
          <div class="segment-grid">
            <div>
              <span class="badge badge-aqua">Home Water Solutions</span>
              <h2>RO Purifiers for Homes</h2>
              <p>Looking for an RO water purifier for your home? VARUN AQUA TECH provides domestic RO sales and installation support in Dharmapuri and nearby areas.</p>
              <p>Because water conditions vary widely across Dharmapuri, the appropriate purifier depends on key factors:</p>
              <ul class="checklist">
                <li><span class="check">&#10003;</span> <strong>Water source</strong> &mdash; Borewell, open well, or municipal supply</li>
                <li><span class="check">&#10003;</span> <strong>Water quality</strong> &mdash; Measured Total Dissolved Solids (TDS) &amp; hardness</li>
                <li><span class="check">&#10003;</span> <strong>Household requirements</strong> &mdash; Daily drinking &amp; cooking volume</li>
                <li><span class="check">&#10003;</span> <strong>Purification needs</strong> &mdash; RO, UV, UF, or mineral enhancement</li>
              </ul>
              <a href="ro-water-purifier-sales/" class="btn btn-primary">Find the Right RO Solution</a>
            </div>
            <div>
              <img src="assets/filter-cartridges.svg" alt="Domestic RO water purifier service in Bosinaickenhalli" width="540" height="320">
            </div>
          </div>
        </div>

        <div class="segment-box" style="margin-bottom: 0;" id="commercial-ro">
          <div class="segment-grid">
            <div>
              <img src="assets/commercial-plant.svg" alt="Commercial RO water purifier installation service near Dharmapuri Tamil Nadu" width="540" height="340">
            </div>
            <div>
              <span class="badge badge-navy">Business &amp; Institutional</span>
              <h2>Commercial RO Water Purification Solutions</h2>
              <p>For businesses and commercial requirements, VARUN AQUA TECH provides RO purifier sales, installation and service support based on the customer's requirements.</p>
              <p>Whether you operate a shop, school, clinic, small hotel, or office in Dharmapuri district, we configure commercial purification systems to deliver reliable flow capacity and water quality.</p>
              <ul class="checklist">
                <li><span class="check">&#10003;</span> High-capacity commercial purification systems (25 LPH, 50 LPH, 100+ LPH)</li>
                <li><span class="check">&#10003;</span> Professional installation and doorstep plumbing integration</li>
                <li><span class="check">&#10003;</span> Scheduled filter media and membrane maintenance</li>
                <li><span class="check">&#10003;</span> Commercial AMC contracts for uninterrupted clean water</li>
              </ul>
              <a href="commercial-ro-dharmapuri/" class="btn btn-primary">Discuss Commercial Requirements</a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Local Dharmapuri Section -->
    <section class="section" id="dharmapuri-service">
      <div class="container container-narrow text-center">
        <div class="section-header">
          <span class="badge badge-aqua">Local Service Entity</span>
          <h2>RO Water Purifier Service in Dharmapuri</h2>
          <p style="font-size: 1.05rem; line-height: 1.8;">
            VARUN AQUA TECH is an RO water purifier sales and service center located near Dharmapuri in Bosinaickenhalli, Tamil Nadu. We provide domestic and commercial RO purifier sales, installation, repair, maintenance, AMC, filter replacement and membrane replacement services.
          </p>
          <p style="font-size: 0.95rem; color: var(--color-text-muted);">
            Our local service base on Harur Main Road allows us to support residential customers and businesses across Dharmapuri, Bosinaickenhalli, and surrounding areas with dependable doorstep service and practical water purification solutions.
          </p>
          <div style="margin-top: 2rem;">
            <a href="ro-service-dharmapuri/" class="btn btn-secondary">Explore Dharmapuri RO Services &rarr;</a>
            <a href="ro-service-dharmapuri-district/" class="btn btn-primary" style="margin-left: 0.5rem;">View District Service Areas</a>
          </div>
        </div>
      </div>
    </section>

    <!-- Exact Location & Google Business Profile Integration -->
    <section class="section section-bg-light" id="location-exact">
      <div class="container">
        <div class="section-header">
          <span class="badge badge-aqua">Verified Business Location</span>
          <h2>Visit VARUN AQUA TECH</h2>
          <p>Find our official sales and service center or contact us for doorstep support.</p>
        </div>

        <div class="location-card-grid">
          <div class="location-info-card">
            <div>
              <h3 style="font-size: 1.4rem; color: var(--color-navy); margin-bottom: 1.5rem;">VARUN AQUA TECH</h3>
              <div class="nap-item">
                <div class="nap-icon">&#128205;</div>
                <div class="nap-detail">
                  <h4>Address</h4>
                  <p>$($global:NAP.FullAddress)</p>
                </div>
              </div>
              <div class="nap-item">
                <div class="nap-icon">&#128222;</div>
                <div class="nap-detail">
                  <h4>Phone</h4>
                  <p><a href="tel:$($global:NAP.PhoneTel)" style="color: var(--color-blue); font-weight: 700;">$($global:NAP.Phone)</a></p>
                </div>
              </div>
              <div class="nap-item">
                <div class="nap-icon">&#128339;</div>
                <div class="nap-detail">
                  <h4>Business Hours</h4>
                  <p>$($global:NAP.Hours)</p>
                </div>
              </div>
            </div>

            <div class="btn-group" style="margin-top: 1.5rem;">
              <a href="tel:$($global:NAP.PhoneTel)" class="btn btn-primary">Call Now</a>
              <a href="$($global:NAP.WhatsApp)" class="btn btn-whatsapp" target="_blank" rel="noopener">WhatsApp</a>
              <a href="$($global:NAP.MapsUrl)" class="btn btn-secondary" target="_blank" rel="noopener">Get Directions</a>
            </div>
          </div>

          <div class="google-profile-card">
            <div>
              <div class="gbp-badge"><span>&#11088;</span> Official Google Business Profile</div>
              <h3 class="gbp-title">Find Us on Google</h3>
              <p style="color: #D9ECF5; font-size: 0.95rem; line-height: 1.7;">
                Connect with our genuine Google Business Profile for accurate NAP details, directions to our Harur Main Road location, and verified business information.
              </p>
              <div class="gbp-hours-badge">&#10003; Open 24 Hours &mdash; Monday to Sunday</div>
              <p style="font-size: 0.85rem; color: #92B9CC;">
                Category: $($global:NAP.Category)<br>
                Primary Service Area: Dharmapuri, Bosinaickenhalli and surrounding areas.
              </p>
            </div>
            <div style="margin-top: 1.5rem;">
              <a href="$($global:NAP.MapsUrl)" class="btn btn-aqua btn-full" target="_blank" rel="noopener">View Google Profile &rarr;</a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Contact / Lead Section -->
    <section class="section" id="contact-lead-section">
      <div class="container">
        <div class="contact-grid">
          <div>
            <span class="badge badge-aqua">Fast Doorstep Service</span>
            <h2>Need RO Service or a New Purifier?</h2>
            <p style="font-size: 1.05rem; margin-bottom: 1.5rem;">
              Tell us what you need and VARUN AQUA TECH can help you with the appropriate RO sales, installation or service requirement.
            </p>
            <div style="background-color: var(--color-bg-light); border: 1px solid var(--color-border); border-radius: var(--radius-lg); padding: 1.5rem; margin-bottom: 1.5rem;">
              <h4 style="font-size: 1rem; color: var(--color-navy); margin-bottom: 0.5rem;">Direct Assistance:</h4>
              <p style="margin-bottom: 0.5rem; font-size: 0.95rem;">
                <strong>Phone:</strong> <a href="tel:$($global:NAP.PhoneTel)" style="color: var(--color-blue);">$($global:NAP.Phone)</a>
              </p>
              <p style="margin-bottom: 0; font-size: 0.95rem;">
                <strong>Location:</strong> $($global:NAP.FullAddress)
              </p>
            </div>
            <p style="font-size: 0.88rem; color: var(--color-text-muted);">
              We provide prompt doorstep assessments for homes, offices, and commercial establishments across Dharmapuri and neighboring taluks.
            </p>
          </div>

$(Get-LeadForm -relPath "" -defaultService "RO Repair" -defaultLocation "Dharmapuri")
        </div>
      </div>
    </section>

    <!-- FAQ Section -->
    <section class="section section-bg-light" id="faq">
      <div class="container">
        <div class="section-header">
          <span class="badge badge-aqua">Common Questions</span>
          <h2>Frequently Asked Questions</h2>
          <p>Helpful answers regarding our RO purifier sales, installation, and doorstep service in Dharmapuri.</p>
        </div>

        <div class="faq-list">
          <div class="faq-item">
            <button class="faq-question" type="button">
              <span>Do you provide RO service in Dharmapuri?</span>
              <span class="faq-toggle-icon">+</span>
            </button>
            <div class="faq-answer">
              <p>VARUN AQUA TECH provides RO purifier sales, installation, repair and maintenance support in Dharmapuri and selected nearby areas. Contact the team to confirm service availability for your location.</p>
            </div>
          </div>
          <div class="faq-item">
            <button class="faq-question" type="button">
              <span>Do you provide doorstep RO service?</span>
              <span class="faq-toggle-icon">+</span>
            </button>
            <div class="faq-answer">
              <p>Doorstep support may be available depending on the service requirement and location. Contact VARUN AQUA TECH to confirm availability.</p>
            </div>
          </div>
          <div class="faq-item">
            <button class="faq-question" type="button">
              <span>Do you service RO purifiers outside Dharmapuri town?</span>
              <span class="faq-toggle-icon">+</span>
            </button>
            <div class="faq-answer">
              <p>Service may be available in selected surrounding areas and other parts of Dharmapuri district. Confirm your location before booking.</p>
            </div>
          </div>
          <div class="faq-item">
            <button class="faq-question" type="button">
              <span>Do you provide RO installation?</span>
              <span class="faq-toggle-icon">+</span>
            </button>
            <div class="faq-answer">
              <p>Yes. RO installation is one of the services offered by VARUN AQUA TECH.</p>
            </div>
          </div>
          <div class="faq-item">
            <button class="faq-question" type="button">
              <span>Do you provide filter replacement?</span>
              <span class="faq-toggle-icon">+</span>
            </button>
            <div class="faq-answer">
              <p>Yes. Filter and membrane replacement support is available when required.</p>
            </div>
          </div>
          <div class="faq-item">
            <button class="faq-question" type="button">
              <span>Do you provide AMC?</span>
              <span class="faq-toggle-icon">+</span>
            </button>
            <div class="faq-answer">
              <p>AMC services are offered. Contact VARUN AQUA TECH for current AMC details and availability.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Final Homepage CTA Section -->
    <section class="section section-navy" id="final-cta">
      <div class="container text-center">
        <div class="section-header" style="margin-bottom: 2rem;">
          <h2 class="text-white">Ready to Get Your RO System Sorted?</h2>
          <p style="color: #D9ECF5; font-size: 1.05rem;">
            Whether you need a new RO purifier, installation, repair, maintenance or replacement service, contact VARUN AQUA TECH.
          </p>
        </div>

        <div class="btn-group" style="justify-content: center; margin-bottom: 1.5rem;">
          <a href="tel:$($global:NAP.PhoneTel)" class="btn btn-secondary btn-lg">&#128222; Call $($global:NAP.Phone)</a>
          <a href="$($global:NAP.WhatsApp)" class="btn btn-whatsapp btn-lg" target="_blank" rel="noopener">&#128172; WhatsApp Us</a>
          <a href="#contact-lead-section" class="btn btn-aqua btn-lg">Book RO Service</a>
        </div>

        <p style="color: #92B9CC; font-size: 0.95rem; font-weight: 600;">
          Serving Dharmapuri, Bosinaickenhalli and nearby areas.
        </p>
      </div>
    </section>
  </main>
"@

$footer = Get-Footer -relPath ""

$fullHtml = $head + $header + $body1 + $body2 + $footer + "</body></html>"
[System.IO.File]::WriteAllText("d:\varun aqua tech website\index.html", $fullHtml, [System.Text.Encoding]::UTF8)
Write-Output "index.html successfully created. Size: $($fullHtml.Length) bytes"