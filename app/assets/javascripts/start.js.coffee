# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	braiders = $('#braidcalc_braider_id').html()
	$('#braidcalc_braider_id').change ->
		braider = $('#braidcalc_braider_id :selected').val()
		
		alert gon.braiders
		
		$('#braidcalc_number_of_carriers').val("TEST")

