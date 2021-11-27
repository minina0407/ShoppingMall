<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="dto.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.ProductRepository" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel = "stylesheet" href="./resources/css/bootstrap.min.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Subscribe</title>
<style>
*{
font-family: 'Gowun Dodum', sans-serif;
}</style>
</head>
<body>

        
	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
<main class="container">
	<jsp:include page="nav.jsp" />
	
      <%
				for(int i=0; i<listOfProducts.size(); i++){
					Product product = listOfProducts.get(i);	
			%>

	<div class="col-md-15 ">
	
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
       	
        <div class="col p-4 d-flex flex-column position-static">
        
          <strong class="d-inline-block mb-2 text-primary">Flower</strong>
         
	  
          <h3 class="mb-0"><%=product.getpname() %></h3>
          <div class="mb-1 text-muted"><%=product.getUnitPrice() %>원</div>
          <p class="card-text mb-auto"><%=product.getDescription()%></p>
         <a href="./product.jsp?id=<%=product.getProductId() %>" class="stretched-link">구독 시작하러 가기</a>
       
       
        </div>
        <div class="col-auto d-none d-lg-block">
           <img class="card-img" src="./resources/images/<%=product.getFilename()%>" width="400" height="250" loading="lazy">
          </div>
	      </div>
	      </div>
	         
         <%	} %>
    
    
         
     



  
</main>


    
  
<footer class = "containter">
    <%@include file="footer.jsp" %>
      </footer>
</body>

</body>
</html>