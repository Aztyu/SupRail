$(document).ready(function(){
    $('#checkTravel').change(function(){
        if(this.checked){
        	$(".clock_end,.date_end").css('visibility', 'visible');
        	if($("#blah1").val() == "false"){
            	$("#blah1").val('true').change();
        	}
        }
        else{
        	$(".clock_end,.date_end").css('visibility', 'hidden'),
    		$("#blah1").val("false");
        }
    });
});
            
var options = {
	
			    url: contextPath + "/api/get-stations",
	
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