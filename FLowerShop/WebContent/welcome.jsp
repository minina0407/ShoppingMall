<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="navbar-top-fixed.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Welcome Page</title>
<style>
* {
	font-family: 'Gowun Dodum', sans-serif;
}
</style>
</head>
<body>
</head>
<body>
<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
	%>
	
	<!-- 다국어 처리 -->
	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="bundle.message">
		<jsp:include page="nav.jsp" />
		<!-- Header-->
		<section class="py-5">
			<div class="container px-5">
				<div class="text-right">
					<a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
					<div class="card border-0 shadow rounded-3 overflow-hidden">
						<div class="card-body p-0">
							<div class="row gx-0">
								<div class="col-lg-6 col-xl-5 py-lg-5">
									<div class="p-4 p-md-5">

										<div class="h2 fw-bolder">
											<p>
												<fmt:message key="title" />
											</p>
											<p>
												<fmt:message key="title2" />
											</p>
											<p>
												<fmt:message key="title3" />
											</p>
										</div>
										<p>
											<fmt:message key="subtitle1" />
										</p>
										<p>
											<fmt:message key="subtitle2" />
										</p>
										
									</div>
								</div>
								<div class="col-lg-6 col-xl-7">
									<img class="card-img" src="./resources/images/flower_main.jpg"
										alt="...">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!--구독하기 -->
		<section class="bg-light py-5 border-bottom">
			<div class="container px-5 my-5">
				<div class="text-center mb-5">
					<h2 class="fw-bolder">
						<fmt:message key="menutitle" />
					</h2>
					<p class="lead mb-0">
						<fmt:message key="menutitle2" />
					</p>
				</div>
				<div class="row gx-8 justify-content-center">

					<div class="col-lg-6 col-xl-4">
						<div class="card mb-5 mb-xl-0">
							<div class="card-body p-5">
								<div class="small text-uppercase fw-bold text-muted">
									<fmt:message key="submenutitle" />
								</div>
								<div class="mb-3">
									<span class="display-4 fw-bold"> 3<fmt:message
											key="month" />
										<p>
											<fmt:message key="subscribe" />
										</p>
									</span>
								</div>
								<ul class="list-unstyled mb-4">
									<strong><fmt:message key="submenutitle2" /></strong></li>
									
								</ul>
								<div class="d-grid">
											<%if(userID==null) {//로그인안되어있을때 , 
									
									%>
									<a class="btn btn-warning" href="#" onclick="alert('로그인 시 구독 이용 가능')">
									<fmt:message key="subscribe" /></a>
								
								<%
								}
								else {
								%> 
								<a class="btn btn-warning" href="./Subscribe.jsp">
									<fmt:message key="subscribe" /></a>	
								
								 <%
									}
								%></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-xl-4">
						<div class="card mb-5 mb-xl-0">
							<div class="card-body p-5">
								<div class="small text-uppercase fw-bold">
									<i class="bi bi-star-fill text-warning"></i>
									<fmt:message key="submenutitle3" />
								</div>
								<div class="mb-3">
									<span class="display-4 fw-bold">6<fmt:message
											key="month" />
										<p>
											<fmt:message key="subscribe" />
										</p>
									</span>
								</div>
								<ul class="list-unstyled mb-4">
									<li class="mb-2"><i class="bi bi-check text-primary"></i>
										<strong> <fmt:message key="submenutitle4" /></strong></li>
									<li class="mb-2"><i class="bi bi-check text-primary"></i>
										<fmt:message key="submenutitle5" /></li>

								</ul>
								<div class="d-grid">
										<%if(userID==null) {//로그인 안되어있을때 
									
									%>
									<a class="btn btn-warning" href="#" onclick="alert('로그인 시 구독 이용 가능')">
									<fmt:message key="subscribe" /></a>
								
								<%
								}
								else {
								%> 
								<a class="btn btn-warning" href="./Subscribe.jsp">
									<fmt:message key="subscribe" /></a>	
								
								 <%
									}
								%>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-xl-4">
						<div class="card">
							<div class="card-body p-5">
								<div class="small text-uppercase fw-bold text-muted">
									<fmt:message key="submenutitle6" />
								</div>
								<div class="mb-3">
									<span class="display-4 fw-bold"> 1<fmt:message
											key="year" />
										<p>
											<fmt:message key="subscribe" />
										</p>
									</span> <span class="text-muted"></span>
								</div>
								<ul class="list-unstyled mb-4">
									<li class="mb-2"><i class="bi bi-check text-primary"></i>
										<strong> <fmt:message key="submenutitle7" /></strong></li>
									<li class="mb-2"><i class="bi bi-check text-primary"></i>
										<p>
											<fmt:message key="submenutitle8" /></li>

								</ul>
								<div class="d-grid">
								<%if(userID==null) {//로그인 안되어있을때 , 
									
									%>
									<a class="btn btn-warning" href="#" onclick="alert('로그인 시 구독 이용 가능')">
									<fmt:message key="subscribe" /></a>
								
								<%
								}
								else {
								%> 
								<a class="btn btn-warning" href="./Subscribe.jsp">
									<fmt:message key="subscribe" /></a>	
								
								 <%
									}
								%>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	<!-- Footer-->
		<footer class="containter">
			<jsp:include page="footer.jsp" />
		</footer>


	</fmt:bundle>
</body>
</html>