setActiveNavItem = ->
  location = $(".data-nav-location").data "nav-location"
  $("li" + location).addClass("active")

$(window).on "load", setActiveNavItem
document.addEventListener "turbolinks:load", setActiveNavItem
