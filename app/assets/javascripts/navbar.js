function myFunction() {
    var x = document.getElementById("responsive-mode-on");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
