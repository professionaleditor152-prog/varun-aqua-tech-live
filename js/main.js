document.addEventListener("DOMContentLoaded", () => {
  // 1. Mobile Navigation Drawer
  const menuBtn = document.querySelector(".mobile-menu-btn");
  const navDrawer = document.querySelector(".mobile-nav-drawer");
  const overlay = document.querySelector(".mobile-nav-overlay");
  const closeBtn = document.querySelector(".drawer-close-btn");

  const openDrawer = () => {
    if (navDrawer && overlay) {
      navDrawer.classList.add("active");
      overlay.classList.add("active");
      document.body.style.overflow = "hidden";
    }
  };

  const closeDrawer = () => {
    if (navDrawer && overlay) {
      navDrawer.classList.remove("active");
      overlay.classList.remove("active");
      document.body.style.overflow = "";
    }
  };

  if (menuBtn) menuBtn.addEventListener("click", openDrawer);
  if (closeBtn) closeBtn.addEventListener("click", closeDrawer);
  if (overlay) overlay.addEventListener("click", closeDrawer);

  document.addEventListener("keydown", (e) => {
    if (e.key === "Escape" && navDrawer && navDrawer.classList.contains("active")) {
      closeDrawer();
    }
  });

  // 2. Sticky Header Scroll Effect
  const header = document.querySelector(".site-header");
  window.addEventListener("scroll", () => {
    if (header) {
      if (window.scrollY > 20) {
        header.classList.add("scrolled");
      } else {
        header.classList.remove("scrolled");
      }
    }
  }, { passive: true });

  // 3. Problem/Trouble Selection Interaction
  const troubleCards = document.querySelectorAll(".trouble-card");
  const serviceSelect = document.getElementById("service-select");
  const messageInput = document.getElementById("form-message");

  troubleCards.forEach((card) => {
    card.addEventListener("click", () => {
      troubleCards.forEach((c) => c.classList.remove("selected"));
      card.classList.add("selected");

      const issueName = card.getAttribute("data-issue") || card.querySelector(".trouble-name")?.textContent.trim();
      
      if (serviceSelect) {
        // Map issue to dropdown value
        if (issueName.includes("leakage") || issueName.includes("flow") || issueName.includes("not working") || issueName.includes("performance")) {
          serviceSelect.value = "RO Repair";
        } else if (issueName.includes("Filter")) {
          serviceSelect.value = "Filter Replacement";
        } else if (issueName.includes("Membrane")) {
          serviceSelect.value = "Membrane Replacement";
        } else if (issueName.includes("Maintenance")) {
          serviceSelect.value = "RO Maintenance";
        }
      }

      if (messageInput && issueName) {
        messageInput.value = `Issue reported: ${issueName}. Please assist with inspection/service in Dharmapuri.`;
      }

      const formSection = document.getElementById("contact-lead-section") || document.getElementById("service-form");
      if (formSection) {
        formSection.scrollIntoView({ behavior: "smooth", block: "start" });
      }
    });
  });

  // 4. FAQ Accordion Toggle
  const faqItems = document.querySelectorAll(".faq-item");
  faqItems.forEach((item) => {
    const question = item.querySelector(".faq-question");
    if (question) {
      question.addEventListener("click", () => {
        const isActive = item.classList.contains("active");
        faqItems.forEach((i) => i.classList.remove("active"));
        if (!isActive) {
          item.classList.add("active");
        }
      });
    }
  });

  // 5. Contact Lead Form Submission
  const leadForm = document.getElementById("leadForm");
  const formSuccess = document.getElementById("form-success-box");

  if (leadForm) {
    leadForm.addEventListener("submit", (e) => {
      e.preventDefault();

      const name = document.getElementById("form-name")?.value.trim() || "";
      const phone = document.getElementById("form-phone")?.value.trim() || "";
      const service = document.getElementById("service-select")?.value || "RO Service";
      const location = document.getElementById("form-location")?.value.trim() || "Dharmapuri";
      const notes = document.getElementById("form-message")?.value.trim() || "";

      if (!name || !phone) {
        alert("Please enter your name and phone number.");
        return;
      }

      // Format WhatsApp message
      const text = `Hello VARUN AQUA TECH,\n\nName: ${name}\nPhone: ${phone}\nService Required: ${service}\nLocation: ${location}\nNotes: ${notes || "Need RO service support."}`;
      const encoded = encodeURIComponent(text);
      const whatsappUrl = `https://wa.me/918838055968?text=${encoded}`;

      // Show friendly confirmation
      if (formSuccess) {
        formSuccess.style.display = "block";
        formSuccess.scrollIntoView({ behavior: "smooth", block: "nearest" });
      }

      // Open WhatsApp in new tab for direct instant connection
      window.open(whatsappUrl, "_blank");
      leadForm.reset();
    });
  }
});