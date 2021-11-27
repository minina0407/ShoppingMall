	<%@ page import="java.sql.*" %>
		<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
		<%@ page import="java.util.ArrayList" %>
		<% request.setCharacterEncoding("utf-8"); %>
	
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>loginAction</title>
</head>
<body>
<%

request.setCharacterEncoding("utf-8");

String userID=request.getParameter("userID");
String userPassword=request.getParameter("userPassword");
String userName=request.getParameter("userName");
String userEmail=request.getParameter("userEmail");


if(session.getAttribute("userID")!=null){
	userID=(String)session.getAttribute("userID");
}
if(userID!=null){
	out.println("<script> location.href='welcome.jsp' </script>");  // 일치하면 로그인성공
		
}

Connection conn=null;
String dbURL = "jdbc:mysql://localhost:3306/flowershop?characterEncoding=euckr";
String dbID = "root";
String dbPassword = "1234";
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

		// 이미 로그인했으면 다시 로그인을 할 수 없음ㅡ,
	
					ResultSet rs=null;
					PreparedStatement pstmt=null;
					
					try {
						String sql = "select userID,userPassword from user where userID =?";
						
						pstmt = conn.prepareStatement(sql); 
					
					pstmt.setString(1,userID);
					rs=pstmt.executeQuery();
						if(rs.next()) { //다음 행으로 커서 이동 
						String rId=rs.getString("userID");
						String rPasswd=rs.getString("userPassword");
						if(userID.equals(rId)&&userPassword.equals(rPasswd)){
						session.setAttribute("userID", userID);
							out.println("<script> alert('로그인 성공') </script>");  // 일치하면 로그인성공
							out.println("<script> location.href='welcome.jsp' </script>"); 
							 // 일치하면 로그인성공// 일치하면 로그인성공
							
						}
								else
								out.println("<script> alert('비밀번호가 틀렸습니다.') </script>");  //비밀번호가 틀렸으므로 비밀번호 틀립니다 출력 
						}
						else
						 out.println("<script> alert('아이디가 존재하지 않습니다.') </script>");  //존재하지 않는 아이디 출력 
					}catch (SQLException ex) {
					out.println("SQLException: "+ex.getMessage());
					}
					finally {
						if(rs!=null)
							rs.close();
						if(pstmt!=null)
							pstmt.close();
						if(conn!=null)
							conn.close();
				
				}
			%>
		</body>
</body>