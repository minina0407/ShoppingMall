<%@ page  contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel = "stylesheet" href="./resources/css/bootstrap.min.css"/>
       <link href="css/styles.css" rel="stylesheet">
  </head>
    <body>
    <%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
	%>
     <div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
      </a>

    
<% if(userID == null){
			%>
			  <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="./welcome.jsp" class="nav-link px-2 link-secondary">Home</a></li>
          <li><a href="#" onclick="alert('로그인 시 구독 이용 가능')"  class="nav-link px-2 link-dark">Subscribe</a></li>
     
      </ul>
      <div class="col-md-3 text-end">
      
      	   <a href="./login.jsp" class = "btn btn-outline-primary me-2">  
        Login </a> 
         <a href="./signin.jsp" class = "btn btn-outline-primary me-2"> 
       Sign-up</a> 
      </div>
    <%
				// 로그인이 되어 있는 상태에서 보여주는 화면
				}

else{
			%>
			  <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="./welcome.jsp" class="nav-link px-2 link-secondary">Home</a></li>
        <li><a href="./Subscribe.jsp" class="nav-link px-2 link-dark">Subscribe</a></li>
      
      </ul>  
			 <div class="col-md-3 text-end">
      
      	   <a href="./logout.jsp" class = "btn btn-outline-primary me-2">  
        Logout </a> 
            <a href="./cart.jsp" class = "btn btn-outline-primary me-2">  
        Cart </a> 
      </div>
     <%
				}
			%>
    </header>
  </div>   
</body>
</html>