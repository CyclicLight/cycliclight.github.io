function openTargetDetails() {
  const hash = window.location.hash;
  if (!hash || hash.length < 2) return;

  let target;
  try {
    target = document.querySelector(hash);
  } catch (e) {
    // Invalid selector :(
    return;
  }
  if (!target) return;

  // Open the target itself if it's a <details>, plus any ancestor <details>
  let el = target;
  while (el) {
    if (el.tagName === "DETAILS") el.open = true;
    el = el.parentElement;
  }

  target.scrollIntoView();
}

window.addEventListener("DOMContentLoaded", openTargetDetails);
window.addEventListener("hashchange", openTargetDetails);
