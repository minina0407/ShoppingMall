<html>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder"%>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
	<link rel = "stylesheet" href = "./resources/css/bootstrap.min.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">	
<style>
* {
	font-family: 'Gowun Dodum', sans-serif;
}
</style>
<title>주문 완료</title>
</head>
<body class="bg-light">
	<%
		String shipping_cartId ="";
		String shipping_name ="";
		String shipping_shippingDate ="";
		String shipping_addressName ="";
		
		Cookie[] cookies = request.getCookies();
		
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if (n.equals("Shipping_cartId"))
					shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				if (n.equals("Shipping_shippingDate"))
					shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			}
		}
	%>
<%@ include file="nav.jsp"%>
	<div class="container py-4">
			<h2 class="text-center display-3">주문완료</h2>
	</div>
	
	<div class="container">
	<div class="p-5 mb-4 bg-white shadow lg-3 mb-5 bg-body rounded">
		
		<h2 class="alert alert-warning">주문해주셔서 감사합니다</h2>
		<p> 주문은 <%	out.println(shipping_shippingDate); %>에 발송될 예정입니다!
		<p> 주문번호 : <% out.println(shipping_cartId); %>
		</div>
		</div>
	
</body>
<%@ include file="footer.jsp"%>
</html>
<%
	session.invalidate();
	
	for (int i = 0; i < cookies.length; i++) {
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if (n.equals("Shipping_cartId"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_name"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_shippingDate"))
			thisCookie.setMaxAge(0);
		if (n.equals("Shipping_addressName"))
			thisCookie.setMaxAge(0);
			
		response.addCookie(thisCookie);
	}
%>