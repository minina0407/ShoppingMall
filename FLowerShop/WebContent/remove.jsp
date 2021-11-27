<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
String id = request.getParameter("id");
if(id == null || id.trim().equals("")){
	response.sendRedirect("Subscribe.jsp");
	return;
}

ProductRepository dao = ProductRepository.getInstance();

Product product = dao.getProductById(id);
if(product == null){
	response.sendRedirect("exceptionNopage.jsp");	
}

ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartlist");
Product goodsQnt = new Product();
for(int i=0; i<cartList.size(); i++){
	goodsQnt = cartList.get(i);
	if(goodsQnt.getProductId().equals(id)){
		cartList.remove(goodsQnt);
	}
}

response.sendRedirect("cart.jsp");
%>