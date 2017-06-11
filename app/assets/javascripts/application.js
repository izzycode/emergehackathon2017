// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {

  $("#card1").flip();
  $("#card2").flip();

  function sleep(ms) {
  		return new Promise(resolve => setTimeout(resolve, ms));
	}

	async function timer(hours, minutes, seconds) {
		var total_seconds = (hours*60*60)+(minutes*60) + seconds;
		for (var i = total_seconds; i >= 0; i--) {
			await sleep(1000);
			var curr_hours = Math.trunc(i / (60*60));
			var curr_minutes = Math.trunc(i / 60) - (curr_hours*60);
			var curr_seconds = i % 60;
			var output = "00:00";
			if (i == 0) {
				console.log("Time Up!");
			} else {
				if (curr_hours >= 10) {
					if (curr_minutes >= 10) {
						if (curr_seconds >= 10) {
							output = curr_hours+":"+curr_minutes+":"+curr_seconds;
						} else {
							output = curr_hours+":"+curr_minutes+":"+"0"+curr_seconds;
						}
					} else {			
						if (curr_seconds >= 10) {
							output = curr_hours+":"+"0"+curr_minutes+":"+curr_seconds;
						} else {
							output = curr_hours+":"+"0"+curr_minutes+":"+"0"+curr_seconds;
						}
					}
				} else {
					if (curr_minutes >= 10) {
						if (curr_seconds >= 10) {
							output = "0"+curr_hours+":"+curr_minutes+":"+curr_seconds;
						} else {
							output = "0"+curr_hours+":"+curr_minutes+":"+"0"+curr_seconds;
						}
					} else {			
						if (curr_seconds >= 10) {
							output = "0"+curr_hours+":"+"0"+curr_minutes+":"+curr_seconds;
						} else {
							output = "0"+curr_hours+":"+"0"+curr_minutes+":"+"0"+curr_seconds;
						}
					}
				}
				$("#clock_timer").html(output);
				console.log("clock running ");
			}
		}
	}
		timer(1, 40, 6);
		console.log("hi justins")
	});
});


