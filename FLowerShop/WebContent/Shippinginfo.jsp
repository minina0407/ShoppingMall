<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="navbar-top-fixed.css" rel="stylesheet">
<link href="heroes.css" rel="stylesheet">
<style>
* {
	font-family: 'Gowun Dodum', sans-serif;
}
</style>
<title>Subscribe flower form</title>
</head>
<body class="bg-light">
	<%@ include file="nav.jsp"%>
	<div class="container">
		<main>
			<div class="container py-4 text-center">
				<h2>구독 진행하기</h2>
				<p class="lead">원하시는 구독 날짜와 이름, 주소를 입력해주세요</p>
			</div>


			<div class="p-5 mb-4 bg-white shadow lg-3 mb-5 bg-body rounded">
				<div class="container py-4">
					<div class="card-header bg-white">
						<h3 class="mb-3"><strong>구독 정보</strong></h3>
					</div>

					<div class="card-body">
						<form action="./processShippinginfo.jsp" class="form-horizontal"
							method="post">
							<input type="hidden" name="cartId"
								value="<%=request.getParameter("cartId")%>" />

							<div class="form-group">

								<label for="userName" class="form-label">이름</label> <input
									name="name" type="text" class="form-control" />

							</div>

							<div class="form-group">
								<label> 원하는 구독일을 선택하세요 </label> <input name="shippingDate"
									type="text" class="form-control" placeholder="(yyyy/mm/dd)" />
							</div>



							<div class="form-group">
								<label for="address" class="form-label">주소</label> <input
									name="addressName" type="text" class="form-control" />
								<hr class="my-4">
							</div>

							<span> <a
								href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>"
								class="btn btn-secondary" role="button">이전</a> <input
								type="submit" class="btn btn-warning" value="등록" /> 

							</span>
						</form>
					</div>



				</div>

			</div>

		</main>
	</div>

</body>
</html>