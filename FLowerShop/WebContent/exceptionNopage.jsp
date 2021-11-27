<%@ page  contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Nopage</title>
</head>

<body>
<%@ include file="nav.jsp" %>

<%!
String main = "요청하신 페이지가 존재하지 않습니다.";
%>
<div class="jumbotron">
	<div class="container">
		<h1 class = "display-3"><%=main %></h1>
	</div>
</div>

<main role="main">
<div class="contaimer">
	<div class="text-center">
		<p><%=request.getRequestURL() %>?<%=request.getQueryString() %>
		<p> <a href="Subscribe.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
		
	</div>
</div>
<%@ include file="footer.jsp" %>
</main>

</body>
</html>