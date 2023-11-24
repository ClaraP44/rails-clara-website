// When the user scrolls down, resize the navbar's padding and the logo's font size
window.onload = function() {
  if (window.innerWidth > 768) {
    window.onscroll = function() {
      scrollFunction();
    };

    function scrollFunction() {
      var navbar = document.getElementById("navbar");
      var logo = document.getElementById("logo");

      if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
        navbar.style.height = "60px";
        navbar.style.fontSize = "18px";
        logo.style.fontSize = "24px";
      } else {
        navbar.style.height = "80px";
        navbar.style.fontSize = "20px";
        logo.style.fontSize = "28px";
      }
    }
  }
};

