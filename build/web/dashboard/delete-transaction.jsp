<%@page import="model.TransactionModel"%>
<%@page import="domain.Transaction"%>
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
        <title>Delete Transaction</title>
    </head>
    <body>
        <%
            if (session.getAttribute("id") == null) response.sendRedirect("logout.jsp");
            Transaction transaction = new TransactionModel().find(Integer.parseInt(request.getParameter("id")));
            
            try {
                TransactionModel model = new TransactionModel();
                model.setTransaction(transaction);
                model.delete();
                response.sendRedirect("all-transaction.jsp");
                
            } catch(Exception e) {
                response.sendRedirect("all-transaction.jsp");
            }
        %>
    </body>
</html>
