
// Utility function to retrieve the current slider values
function getCurrentColor() {
    let red = document.getElementById("slider-red").value;
    let green = document.getElementById("slider-green").value;
    let blue = document.getElementById("slider-blue").value;
    return [red, green, blue];
}

// Performs the hard work of updating the color
// Uses a handy switch/case structure to match the colorName
// and update the correct value.
function updateColor(colorName, colorVal) {
    let colorChanger = document.getElementById("color-changer");
    let [red, green, blue] = getCurrentColor();
    switch (colorName) {
        case "red":
            red = colorVal;
            break;
        case "green":
            green = colorVal;
            break;
        case "blue":
            blue = colorVal;
            break;
        default:
            break;
    }
    let newColor = `rgb(${red},${green},${blue})`;
    colorChanger.style.setProperty("background", newColor);
}

// The Event Handler that fires
// when the slider is changed
const colorHandler = (e) => {
    let targetName = e.target.name;
    let colorName = targetName.split("-")[1];
    let colorVal = e.target.value;
    updateColor(colorName, colorVal);
}

// Set the default color. Happens on load of this file.
document.getElementById("color-changer").style.setProperty("background", "#646464");

// Add event listeners to the sliders
document
    .querySelectorAll(".color-slider")
    .forEach(l => {
        l.addEventListener("change", colorHandler);
    });