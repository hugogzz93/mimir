$(document).on('users#expenses:loaded', function() {
	new Chart($('#expenses-chart'), {
			type: 'doughnut',
				data: {
					labels: gon.chart_data.map(function(x) {return x["name"]}),
					datasets: [{
						data: gon.chart_data.map(function(x) {return x["sum"]}),
						backgroundColor: ["#FF6384", "#36A2EB"],
						hoverBackgroundColor: ["#FF6384", "#36A2EB"]
	        }]
				}
		})	
})