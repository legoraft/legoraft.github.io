const switcher = document.getElementById("theme-switcher");
const root = document.documentElement;

// Load saved theme
const savedTheme = localStorage.getItem("theme") || "light";
root.setAttribute("css-theme", savedTheme);
switcher.value = savedTheme;

// Handle change
switcher.addEventListener("change", (e) => {
  const theme = e.target.value;
  root.setAttribute("css-theme", theme);
  localStorage.setItem("theme", theme);
});
