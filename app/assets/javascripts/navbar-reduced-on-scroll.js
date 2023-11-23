// When the user scrolls down, resize the navbar's padding and the logo's font size
window.onload = function() {

  window.onscroll = function() {scrollFunction()};

  function scrollFunction() {
    if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
      document.getElementById("navbar").style.height = "60px";
      document.getElementById("logo").style.fontSize = "24px";
      document.getElementById("navbar").style.fontSize = "18px";
    } else {
      document.getElementById("navbar").style.height = "80px";
      document.getElementById("logo").style.fontSize = "28px";
      document.getElementById("navbar").style.fontSize = "20px";
    }
  }

};
