<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width-device-width" , initial-scale="1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<title>Login</title>
<style>
* {
	font-family: 'Gowun Dodum', sans-serif;
}
</style>
</head>
<body class="text-center bg-white">
	<%@ include file="nav.jsp"%>

	<main>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-5">
					<div class="card shadow-lg border-0 rounded-lg mt-5">
						<div class="card-header">
							<h3 class="text-center font-weight-light my-4">로그인</h3>
						</div>
						<div class="card-body">
							<form method="post" action="loginAction.jsp">
								<div class="form-group">
									<label for="inputID">아이디</label> <input class="form-control"
										name="userID" type="text" maxlength="20"
										placeholder="Enter ID">
								</div>

								<div class="form-group">
									<label for="inputPassword">비밀번호</label> <input
										class="form-control" name="userPassword" type="password"
										placeholder="Enter Password">
								</div>

								<input type="submit" class="btn btn-primary form-control"
								value="로그인">
								</form>
						</div>
						

					</div>
				</div>
				</div>
				</div>
	</main>

</body>