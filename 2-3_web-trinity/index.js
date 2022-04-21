
// Capture the toggle button and save it in a variable
let toggleButton = document.getElementById("title-toggle");

// Add an EventListener that determines what happens
// when we click on the button
toggleButton.addEventListener("click", () => {

    // We capture the h1 header by its id
    let title = document.getElementById("hello-world");

    // And on each click, toggle the presence of the 'toggled' class
    // Because our CSS has specific styling for the class,
    // the title will change color when the class is present.
    title.classList.toggle("toggled");
})