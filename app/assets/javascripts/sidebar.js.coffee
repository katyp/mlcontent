# This is the real, high level sidebar stuff
setSidebarHeight = () ->
  console.log("setting height")
  $(".sidebar").height($("#matchable-height").height())

document.addEventListener "turbolinks:load", setSidebarHeight

$(window).on "load", ->
  setSidebarHeight()
