# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'money#index:loaded', ->
	lineChart = new Chart($("#money-chart"),
			type: 'line',
			data: {
				labels: gon.object_data.labels
				datasets: gon.object_data.datasets
			},
			options: {}
		);