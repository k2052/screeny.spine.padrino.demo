#= require json2
#= require underscore
#= require jquery-ui
#= require spine
#= require spine/ajax
#= require rivets
#
#= require_tree ./lib
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views

$(document).ready ->
  new Screenshots({el: $("#screenshots")})

  $("#screenshots .items").sortable stop: (event, ui) ->
    screenshot = Screenshot.find(ui.item.data('id'))
    unless screenshot.position == ui.item.index() + 1
      screenshot.updateAttributes(position: ui.item.index() + 1) 

  $("#screenshots .items").disableSelection()

  filepicker.makeDropPane $("#dropPane")[0],
    multiple: true
    dragEnter: ->
      $("#dropPane").html("Drop to upload").css
        backgroundColor: "#E0E0E0"
        border: "1px solid #000"

    dragLeave: ->
      $("#dropPane").html("Drop files here").css
        backgroundColor: "#F6F6F6"
        border: "1px dashed #666"

    onSuccess: (fpfiles) ->
      $("#dropPane").text "Done, see result below"
      for file in fpfiles
        Screenshot.create(image: file.url)

    onError: (type, message) ->
      $("#dropPane").text "(" + type + ") " + message

    onProgress: (percentage) ->
      $("#dropPane").text "Uploading (" + percentage + "%)"
