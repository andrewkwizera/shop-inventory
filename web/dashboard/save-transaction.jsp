<%@page import="model.UserModel"%>
<%@page import="domain.User"%>
<%@page import="model.ProductModel"%>
<%@page import="domain.Product"%>
<%@page import="domain.TransactionType"%>
<%@page import="model.TransactionModel"%>
<%@page import="domain.Transaction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Save Transaction</title>
    </head>
    <body>
        <%
            if (session.getAttribute("id") == null) response.sendRedirect("logout.jsp");
            Product product = new ProductModel().find(Integer.parseInt(request.getParameter("product")));
            User me = new UserModel().find((Integer) session.getAttribute("id"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            float price = product.getBuyingPrice();
            
            if (TransactionType.valueOf(request.getParameter("type")) == TransactionType.SALE)
                price = product.getSellingPrice();
            
            Transaction transaction = new Transaction();
            transaction.setId(new TransactionModel().all().size() + 1);
            transaction.setType(TransactionType.valueOf(request.getParameter("type")));
            transaction.setDescription(request.getParameter("description"));
            transaction.setUnitPrice(price);
            transaction.setQuantity(quantity);
            transaction.setReceiptId(0);
            transaction.setTotalPrice(quantity * price);
            transaction.setUser(me);
            transaction.setProduct(product);
            transaction.setIsActive(true);
            transaction.setCreatedAt(new java.sql.Date(new java.util.Date().getTime()));
            
            try {
                TransactionModel model = new TransactionModel();
                model.setTransaction(transaction);
                model.save();
                response.sendRedirect("all-transaction.jsp");
                
            } catch(Exception e) {
                response.sendRedirect("all-transaction.jsp");
            }
        %>
    </body>
</html>
