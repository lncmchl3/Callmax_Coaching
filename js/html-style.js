var menu = document.querySelector(".menu");
var check = document.querySelector("#toggled");
var width = window.matchMedia("(max-width: 1000px)");

const show = () => check.checked === true ? menu.style.display = "block" : menu.style.display = "none";
const mediaQ = (width) => width.matches ? show() : menu.style.display = "block";

mediaQ(width); // Call listener function at run time
width.addListener(mediaQ); // Attach listener function on state changes
