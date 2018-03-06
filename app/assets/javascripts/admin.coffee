# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
converter = new showdown.Converter()

populatebox = ->
  console.log "hi"
  plaintext = $("#post_content").html()
  markdown = converter.makeHtml(plaintext)

  $("#admin-preview").html(markdown)

$("#button").click(populatebox)

