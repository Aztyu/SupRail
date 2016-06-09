$(function() {
    $('#numbers').change(function() {
    	var ascending = false;
    	var convertToNumber = function(value){
            return parseFloat(value.replace('$',''));
            }
        if($(this).val() == 1){
            var sorted = $('.flight-item').sort(function(a,b){
                return (ascending ==
                       (parseInt($(a).find('.pricesort').html()) < 
                        parseInt($(b).find('.pricesort').html()))) ? 1 : -1;
            });
            ascending = ascending ? false : true;

            $('#sortdata').html(sorted); 
        }
        else if ($(this).val() == 2)
        {
        	var sorted = $('.flight-item').sort(function(a,b){
                return (ascending ==
                       (parseInt($(a).find('.distsort').html()) < 
                        parseInt($(b).find('.distsort').html()))) ? 1 : -1;
            });
            ascending = ascending ? false : true;

            $('#sortdata').html(sorted); 
        }
       
    });
});
