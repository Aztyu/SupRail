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