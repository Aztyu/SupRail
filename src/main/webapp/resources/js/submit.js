$("#searchTrain").submit(function(event) {
	var startCity = parseInt($("#eac-container-StartCity").find("span").first().text(), 10);
	var endCity = parseInt($("#eac-container-EndCity").find("span").first().text(), 10);
	$("#StartCityId").val(startCity);
	$("#EndCityId").val(endCity);
});