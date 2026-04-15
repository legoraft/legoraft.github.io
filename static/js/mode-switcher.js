const root = document.documentElement;
const button = document.getElementById("mode-button");
const icon = document.getElementById("mode-icon");

const modes = ["system", "light", "dark"];
const icons = { system: "🖥️", light: "🌞", dark: "🌙" };

function getMode() {
  return root.getAttribute("mode") || "system";
}

function updateIcon() {
  const mode = getMode();
  icon.textContent = icons[mode];
}

const savedMode = localStorage.getItem("mode");
if (savedMode) {
  root.setAttribute("mode", savedMode);
  
  updateIcon();
}

function cycleMode() {
  const mode = getMode();
  const nextMode = modes[(modes.indexOf(mode) + 1) % modes.length];
  
  if (nextMode == "system") {
    root.removeAttribute("mode");
    localStorage.removeItem("mode");
  } else {
    root.setAttribute("mode", nextMode);
    localStorage.setItem("mode", nextMode);
  }
  
  updateIcon();
}

button.addEventListener("click", cycleMode);
