# This is the real, high level sidebar stuff
setSidebarHeight = () ->
  console.log("setting height")
  $(".sidebar").height($(".post-show").height())

document.addEventListener "turbolinks:load", setSidebarHeight

$(window).on "load", ->
  setSidebarHeight()
