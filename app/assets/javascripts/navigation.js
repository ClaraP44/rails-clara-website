// CHANGE COLOR WHEN NAV-LINK CLICKED
document.addEventListener("DOMContentLoaded", function () {
  var currentPath = window.location.pathname;
  var navLinks = document.querySelectorAll(".nav-link");

  navLinks.forEach(function (link) {
    var linkPath = link.getAttribute("href");
    if (currentPath.startsWith(linkPath)) {
      link.classList.add("active");
    }
  });
});
