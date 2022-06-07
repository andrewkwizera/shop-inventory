<%@page import="model.ProductModel"%>
<%@page import="domain.Product"%>
<%@page import="domain.Product"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Shop Inventory</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css" />
        <link rel="stylesheet" href="../css/style.css" />
         <link rel="stylesheet" href="../css/aos.css" />
        <link rel="shortcut icon" href="../img/store.png" type="image/x-icon" />
    </head>
    <body>
        <%@ include file="../partials/navbar-dashboard.jsp" %>

        <!-- START: main content -->
        <main class="container my-4">
            <div class="row justify-content-center">
                <!-- START: table -->
                <div class="col">
                    <div class="card shadow my-3">
                        <div class="card-header bg-secondary text-white">All Products</div>
                        <div class="card-body">
                            <a href="./add-product.jsp" class="btn btn-sm btn-info mb-2">Add Product</a>
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Description</th>
                                            <th scope="col">Price</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            List<Product> products = new ProductModel().all();
                                            for (Product product: products) { 
                                        %>
                                            <tr>
                                                <th><%= product.getId() %></th>
                                                <td>
                                                    <%= product.getName() %> <br>
                                                    <span class='badge bg-secondary'><%= product.getCategory().getName() %></span>
                                                </td>
                                                <td><%= product.getDescription() %></td>
                                                <td>
                                                    Buy : <%= product.getBuyingPrice() + " " + product.getCurrency() %> <br>
                                                    Sell : <%= product.getSellingPrice() + " " + product.getCurrency() %>
                                                </td>
                                                <td>
                                                    <a href="./edit-product.jsp?id=<%= product.getId() %>" class="btn btn-sm btn-sm btn-primary">
                                                        Edit
                                                    </a>
                                                    <a href="./show-product.jsp?id=<%= product.getId() %>" class="btn btn-sm btn-sm btn-success">
                                                        View
                                                    </a>
                                                    <a href="./delete-product.jsp?id=<%= product.getId() %>" class="btn btn-sm btn-sm btn-warning">
                                                        Delete
                                                    </a>
                                                </td>
                                            </tr>
                                            <% } %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END: table -->

                <%@ include file="../partials/sidebar.jsp" %>
            </div>
        </main>
        <!-- END: main content -->

        <script src="../js/bootstrap.bundle.min.js"></script>
        <script src="../js/aos.js"></script>
        <script>
            AOS.init();
        </script>
    </body>
</html>
