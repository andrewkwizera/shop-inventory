<%@page import="model.ProductModel"%>
<%@page import="domain.Product"%>
<%@page import="model.UserModel"%>
<%@page import="domain.User"%>
<%@page import="model.CategoryModel"%>
<%@page import="domain.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Product</title>
    </head>
    <body>
        <%
            if (session.getAttribute("id") == null) response.sendRedirect("logout.jsp");
            Product product = new ProductModel().find(Integer.parseInt(request.getParameter("id")));
            
            try {
                ProductModel model = new ProductModel();
                model.setProduct(product);
                model.delete(product.getId());
                response.sendRedirect("all-product.jsp");
                
            } catch(Exception e) {
                response.sendRedirect("all-product.jsp");
                e.printStackTrace();
            }
        %>
    </body>
</html>
