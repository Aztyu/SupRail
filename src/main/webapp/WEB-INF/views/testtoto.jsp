<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<form id="checkout" method="post" action="${pageContext.request.contextPath}/validate">
	  <div id="payment-form"></div>
	  <input type="submit" value="Pay $10">
	</form>
	
	<script src="https://js.braintreegateway.com/js/braintree-2.24.1.min.js"></script>
	<script>
		// We generated a client token for you so you can test out this code
		// immediately. In a production-ready integration, you will need to
		// generate a client token on your server (see section below).
		var clientToken = "${token}";
		
		braintree.setup(clientToken, "dropin", {
		  container: "payment-form"
		});
	</script>
</html>