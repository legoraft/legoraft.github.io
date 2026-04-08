const switcher = document.getElementById("theme-switcher");
const root = document.documentElement;

const savedTheme = localStorage.getItem("theme");
if (savedTheme) {
  root.setAttribute("css-theme", savedTheme);
}

if (switcher) {
  if (savedTheme) {
    switcher.value = savedTheme;
  }
  
  switcher.addEventListener("change", (e) => {
    const theme = e.target.value;
    root.setAttribute("css-theme", theme);
    localStorage.setItem("theme", theme);
  });
}
