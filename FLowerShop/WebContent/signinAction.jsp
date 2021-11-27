<%@page import="java.sql.*" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
    <% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<% 	
		Connection conn=null;
		String dbURL = "jdbc:mysql://localhost:3306/flowershop?characterEncoding=euckr";
		String dbID = "root";
		String dbPassword = "1234";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
	
	request.setCharacterEncoding("utf-8");
	
	String userID=request.getParameter("userID");
	String userPassword=request.getParameter("userPassword");
	String userName=request.getParameter("userName");
	String userEmail=request.getParameter("userEmail");
	
	
	PreparedStatement pstmt=null;
	try {
		String sql="insert into user values(?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,userID);
		pstmt.setString(2,userPassword );
		pstmt.setString(3,userName);
		pstmt.setString(4,userEmail);
		pstmt.executeUpdate();
		out.println("<script> alert('회원가입 성공!') </script>");
		out.println("<script> location.href='welcome.jsp' </script>");
	}
	catch (SQLException ex) {
		out.println("회원가입 실패");
		out.println("<script> location.href='signin.jsp' </script>");
		
	}
	finally{
	if(pstmt!=null)
		pstmt.close();
	if(conn!=null)
		conn.close();
	}
	%>
</body>
</html>