// Open all external links in a new window
addEventListener("click", function (event) {
  const el = event.target

  if (el.tagName === "A" && !el.isContentEditable && el.host !== window.location.host) {
    el.setAttribute("target", "_blank")
  }
}, true)
