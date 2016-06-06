//$('.timepicker-24-hr').wickedpicker({twentyFour: true, title:'Heure', showSeconds: false});
//$('.timepicker').wickedpicker('time', 1);
//var timepickers = $('.timepicker-24-hr').wickedpicker();

$('#timepicker_start').wickedpicker({twentyFour: true, title:'Heure', showSeconds: false});
$('#timepicker_end').wickedpicker({twentyFour: true, title:'Heure', showSeconds: false});


var timepicker_start = $('#timepicker_start').val();
var timepicker_end = $('#timepicker_end').val();

$(document).ready(function() {
	var currentdate = new Date();
	var hour = currentdate.getHours();
	var min = currentdate.getMinutes();
	var has_zero = currentdate.getMinutes() < 10 ? '0' : '';
	var time = hour + " : " + has_zero + min;
	$('#timepicker_start').val(time);
	$('#timepicker_end').val(time);
});