$(document).ready(function(){
            $('input.chooseTravel[name!="check1"]').click(function(e){
                $('input.chooseTravel[name="check1"]').prop('checked',false);
            });
            $('input.chooseTravel[name="check1"]').click(function(e){
                $('input.chooseTravel[name!="check1"]').prop('checked',false);
            });  
	  // Get the form fields and hidden div
	  var checkbox1 = $("#check1");
	  var checkbox2 = $("#check2");
	  var hidden = $("clock_end");
	  
	  hidden.show();
	  
	  // Setup an event listener for when the state of the 
	  // checkbox changes.
	  checkbox1.change(function() {
	    // Check to see if the checkbox is checked.
	    // If it is, show the fields and populate the input.
	    // If not, hide the fields.
	    if (checkbox2.is(':checked')) {
	      // Show the hidden fields.
	      hidden.hide();
	      // Populate the input.
	      
	    } else {
	      // Make sure that the hidden fields are indeed
	      // hidden.
	      hidden.show();
	      
	      // You may also want to clear the value of the 
	      // hidden fields here. Just in case somebody 
	      // shows the fields, enters data to them and then 
	      // unticks the checkbox.
	      //
	      // This would do the job:
	      //
	      // $("#hidden_field").val("");
	    }
	  });
	});

var options = {
	
			    url: "http://localhost:8080/api/stations",
	
			    categories: [{listLocation: "stations"}],
	
			    getValue: function(element) {
			        return element.name;
			    },
	
			    template: {
			        type: "description",
			        fields: {
			            description: "id"
			        }
			    },
	
			    list: {
			    	maxNumberOfElements: 10,
			        match: {
			            enabled: true
			        },
			        sort: {
			            enabled: true
			        }
			    },
	
			    theme: "square"
			};
	
			$("#StartCity").easyAutocomplete(options);
			$("#EndCity").easyAutocomplete(options);
			
			$('#EndCity').change(function(){
				var id1 = $('#StartCity').val();
			    var id2 = $('#EndCity').val();
			    
				if (id1 == id2) {
			    	$('#EndCity').css('color', 'red');
			    	$('#EndCity').val("Choisir une ville différente");
			    	$('#submitTravel').prop('disabled', true);
			    	$('#submitTravel').css('cursor', 'not-allowed');
			    	return false;
			    }
			    else
			    {
			    	$('#submitTravel').css('cursor', 'pointer');
			    	$('#EndCity').css('color', '#68738A');
			    	$('#submitTravel').prop('disabled', false);
			        return true;
			    }
				});