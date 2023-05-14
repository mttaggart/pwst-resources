
// Utility function to retrieve the current slider values
function getCurrentColor() {
    let red = document.getElementById("slider-red").value;
    let green = document.getElementById("slider-green").value;
    let blue = document.getElementById("slider-blue").value;
    return [red, green, blue];
}

// Performs the hard work of updating the color
// Simply grabs the current slider values and converts them to a CSS background style
function updateColor() {
    let colorChanger = document.getElementById("color-changer");
    let [red, green, blue] = getCurrentColor();
    let newColor = `rgb(${red},${green},${blue})`;
    colorChanger.style.setProperty("background", newColor);
}


// Set the default color. Happens on load of this file.
document.getElementById("color-changer").style.setProperty("background", "#646464");

// Add event listeners to the sliders
document
    .querySelectorAll(".color-slider")
    .forEach(l => {
        l.addEventListener("change", updateColor);
    });
