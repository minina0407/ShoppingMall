<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
* {
	font-family: 'Gowun Dodum', sans-serif;
}
</style>
<%
	request.setCharacterEncoding("UTF-8");

String cartId = session.getId();

String shipping_cartId = "";
String shipping_name = "";
String shipping_shippingDate = "";
String shipping_country = "";
String shipping_zipCode = "";
String shipping_addressName = "";

Cookie[] cookies = request.getCookies();

if (cookies != null) {
	for (int i = 0; i < cookies.length; i++) {
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if (n.equals("Shipping_cartId"))
	shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		if (n.equals("Shipping_name"))
	shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		if (n.equals("Shipping_shippingDate"))
	shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		if (n.equals("Shipping_addressName"))
	shipping_addressName = URLDecoder.decode((thisCookie.getValue()), "utf-8");
	}
}
%>

<title>주문 정보</title>
</head>
<body class="bg-light">
	<%@ include file="nav.jsp"%>

	<div class="container py-4">
		<h2 class="text-center display-3">주문완료</h2>
	</div>

	<div class="container py-4">
		<div class="p-5 mb-4 bg-white shadow lg-3 mb-5 bg-body rounded">
			<h1 class="text-center">
				<strong>주문확인서</strong>
			</h1>

			<hr>
			<div class="row justify-content-between">
				<div class="clo-4" align="left">
					<h3>
						<strong>배송 정보</strong>
					</h3>
					<br>
					<h4>이름 :
					<%
						out.println(shipping_name);
					%>
					<br>
					<h4>주소 :
					<%
						out.println(shipping_addressName);
					%>
					<br>
				</div>
				<div class="col-4" align="right">
					<p>
					<h4>
						배송일:
						<%
						out.println(shipping_shippingDate);
					%>
					</h4>
				</div>
			</div>
			<div>
				<table class="table table-hover">
					<thead>
						<tr>
							<th class="text-center">상품</th>
							<th class="text-center">수량</th>
							<th class="text-center">가격</th>
							<th class="text-center">소계</th>
						</tr>
					</thead>
					<%
						int sum = 0;
					ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
					if (cartList == null)
						cartList = new ArrayList<Product>();
					for (int i = 0; i < cartList.size(); i++) {
						Product Product = cartList.get(i);
						int total = Product.getUnitPrice() * Product.getQuantity();
						sum = sum + total;
					%>
					<tr>
						<td class="text-center"><em><%=Product.getpname()%></em></td>
						<td class="text-center"><%=Product.getQuantity()%></td>
						<td class="text-center"><%=Product.getUnitPrice()%>원</td>
						<td class="text-center"><%=total%>원</td>
					</tr>
					<%
						}
					%>
					<tr>
						<td></td>
						<td></td>
						<td class="text-right"><strong>총액: </strong></td>
						<td class="text-center text-danger"><strong><%=sum%></strong></td>
					</tr>
				</table>
			</div>
			<table width=100%>
				<tr>
					<td align="center"><a
						href="./Shippinginfo.jsp?cartId=<%=shipping_cartId%>"
						class="btn btn-outline-dark" role="button">이전</a> <a
						href="./complete.jsp" class="btn btn-warning" role="button">주문완료</a>
						<a href="./checkOutCancelled.jsp" class="btn btn-outline-dark"
						role="button">취소</a>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>