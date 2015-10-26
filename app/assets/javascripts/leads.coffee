# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $("#lead_mobile_phone").inputmask('(99) 9999[9]-9999')
  # $("#lead_mobile_phone").inputmask("(9{2}) 9{4,5}-9{4}")
  $("#sb-tool").change ->
    value = $("#sb-tool").val()
    console.log(value + " selected for #sb-tool")
    if value == "Outro"
      $("#other-tool").html ->
        return "<label for=\"tool\">Qual?</label>" +
          "<input class=\"form-control\" type=\"text\" name=\"lead[tool]\" id=\"lead_email\">"
    else
      $("#other-tool").empty()

  $(".close").click ->
    $(".signal").remove()

$(document).ready(ready)
$(document).on('page:load', ready)
