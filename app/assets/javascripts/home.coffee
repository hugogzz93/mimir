# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'home#index:loaded', ->
  gon.objects.forEach (e, i) -> lineChart = new Chart($("##{e}-chart"),
	    type: 'line',
	    data: {
	      labels: gon.object_data[i].labels
	      datasets: gon.object_data[i].datasets
	    },
	    options: {}
	  );
