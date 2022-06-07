<%@page import="model.CategoryModel"%>
<%@page import="domain.Category"%>
<%@page import="model.UserModel"%>
<%@page import="domain.User"%>
<%@page import="model.ProductModel"%>
<%@page import="domain.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Product</title>
    </head>
    <body>
        <%
            ProductModel model =(ProductModel)request.getAttribute("pm");
                      if(model==null){
                      model=new ProductModel();
                      request.setAttribute("pm", model);
                      }
              
            if (session.getAttribute("id") == null) response.sendRedirect("logout.jsp");
            Product product = new Product();
            User me = new UserModel().find((Integer) session.getAttribute("id"));
           Category cat = new CategoryModel().find(Integer.parseInt(request.getParameter("category")));
            product.setId(Integer.parseInt(request.getParameter("id")));
            product.setName(request.getParameter("name"));
            product.setDescription(request.getParameter("description"));
            product.setCategory(cat);
            product.setBuyingPrice(Float.parseFloat(request.getParameter("buying_price")));
            product.setSellingPrice(Float.parseFloat(request.getParameter("selling_price")));
            product.setCurrency(request.getParameter("currency"));
            product.setUser(me);
            product.setIsActive(true);
            product.setCreatedAt(new java.sql.Date(new java.util.Date().getTime()));
            
              model.setProduct(product);
                
                if(model.checkprice()){
                request.getRequestDispatcher("add-product.jsp").forward(request, response);
                }else{
                model.save();
                  response.sendRedirect("all-product.jsp");
                }
        %>
    </body>
</html>
