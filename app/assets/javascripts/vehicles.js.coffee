$(document).ready ->
  $('select').material_select
  return

jQuery ->
  models = $('#vehicle_model_id').html()
  $('#vehicle_make_id').change ->
    make = $('#vehicle_make_id :selected').text()
    options = $(models).filter("optgroup[label=#{make}]").html()
    if options
      $('#vehicle_model_id').html(options)
    else
      $('#vehicle_model_id').empty()