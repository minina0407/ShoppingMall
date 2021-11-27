<%@ page contentType="text/html; charset=utf-8"%><%@ page
	import="java.util.ArrayList"%>
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

<%
	String cartId = session.getId();
%>
<style>
* {
	font-family: 'Gowun Dodum', sans-serif;
}
</style>

<title>장바구니</title>
</head>
<body class= "bg-light">

	<%@ include file="nav.jsp"%>


	<div class="container py-4">
		<h2 class="text-center display-3">장바구니</h2>

	</div>
	<div class="container py-4">
		<div class="p-5 mb-4 bg-white shadow lg-3 mb-5 bg-body rounded">
			<div class="row"></div>
			<div style="padding-top: 60px">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>상품</th>
							<th>가격</th>
							<th>수량</th>
							<th>소계</th>
							<th>비고</th>

						</tr>
					</thead>
					<%
						int sum = 0;
					ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
					if (cartList == null)
						cartList = new ArrayList<Product>();

					for (int i = 0; i < cartList.size(); i++) {
						Product product = cartList.get(i);
						int total = product.getUnitPrice() * product.getQuantity();
						sum += total;
					%>
					<tr>
						<td><%=product.getProductId()%> - <%=product.getpname()%></td>
						<td><%=product.getUnitPrice()%></td>
						<td><%=product.getQuantity()%></td>

						<td><%=total%></td>

						<td><a href="./remove.jsp?id=<%=product.getProductId()%>"
							class="btn btn-outline-danger"> 삭제</a></td>

					</tr>
					<%
						}
					%>

					<tfoot>
						<tr>
							<th></th>
							<th></th>
							<th>총액</th>
							<th><%=sum%></th>
							<th><a href="./deletecart.jsp?cartId=<%=cartId%>"
								class="btn btn-outline-danger">모든 상품 삭제하기</a></th>

						</tr>
					</tfoot>
				</table>
			</div>
			<table width=100%>
				<tr>
					<td align="center"><a
						href="./Shippinginfo.jsp?cartId=<%=cartId%>"
						class="btn  btn-warning">주문하기</a></td>
				</tr>
			</table>
		</div>
	</div>
</body>
<%@ include file="footer.jsp"%>
</html>
