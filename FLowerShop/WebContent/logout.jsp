<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
session.invalidate();

%>
<script>
alert('로그아웃 되었습니다.');
location.href="welcome.jsp";
</script>
</body>
</html>