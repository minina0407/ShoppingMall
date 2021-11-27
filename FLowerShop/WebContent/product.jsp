
<%@ page  contentType="text/html; charset=utf-8"%>
<%@ page import="dao.ProductRepository" %>
<%@ page import="dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">     <style>
* {
	font-family: 'Gowun Dodum', sans-serif;
}
</style>
        <title>flower product</title>
     </head>
     <script type="text/javascript">
	function addToCart(){
		if(confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		}else{
			document.addForm.reset();
		}
	}
</script>
    <body class=" bg-light">
  <%@ include file="nav.jsp"%>
      <section class="py-5">
        
            <div class="container px-5 px-lg-5 my-5 ">
            	<div class="p-5 mb-4 bg-white shadow lg-3 mb-5 bg-body rounded">
		
                <div class="row gx-4 gx-lg-5 align-items-center">
                <% 	String id = request.getParameter("id");
                ProductRepository dao=ProductRepository.getInstance();
		Product product = dao.getProductById(id);
	%>
                    <div class="col-md-6">
                  <img class="card-img" src="./resources/images/<%=product.getFilename()%>" alt="...">
                  </div>
                    <div class="col-md-6">
             
			
                         <h1 class="display-5 fw-bolder"><%=product.getpname()%></h1>
                        <div class="fs-5 mb-5">
                            <span class="text"><h4><%=product.getUnitPrice() %>원</h4></span>
                            
                        </div>
                        <p class="lead"><%=product.getDescription() %></p>
                        <div class="d-flex">
                 
                        <form name="addForm" action="./addCart.jsp?id=<%=product.getProductId() %>" method="post">
                        		
                            <p><a href="./cart.jsp"  onclick="addToCart()" class="btn btn-warning" >지금바로 구매하기</a> </p>
                            
                             <a href="#"  onclick="addToCart()"  class="btn btn-outline-dark flex-shrink-0" type="button">
                                	장바구니에 담기
                            </a>
                            </form>
                              </div>
                     
         
              
                        </div>
                    </div>
                </div>
            </div>
        </section>
   
        
        <!-- Footer-->
      
</body></html>