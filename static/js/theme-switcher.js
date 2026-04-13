const root = document.documentElement;
const buttons = document.querySelectorAll(".theme-button")

const savedTheme = localStorage.getItem("theme");
if (savedTheme) {
  root.setAttribute("css-theme", savedTheme);
}

buttons.forEach(button => {
  button.addEventListener("click", () => {
    const theme = button.getAttribute("theme");
    root.setAttribute("css-theme", theme);
    localStorage.setItem("theme", theme);
  });
});
