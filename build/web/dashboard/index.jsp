<%@page import="model.TransactionModel"%>
<%@page import="model.CategoryModel"%>
<%@page import="model.ProductModel"%>
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
                <!-- START: status cards  -->
                <div class="col-md-3" data-aos="fade-down">
                    <div class="card card-body shadow bg-primary text-white p-4">
                        <h1><%= new ProductModel().count() %></h1>
                        <p class="fs-5 m-0">Products</p>
                    </div>
                </div>
                <div class="col-md-3" data-aos="fade-up">
                    <div class="card card-body shadow bg-warning p-4">
                        <h1><%= new TransactionModel().count()%></h1>
                        <p class="fs-5 m-0">Sales / Sold</p>
                    </div>
                </div>
                <div class="col-md-3" data-aos="fade-down">
                    <div class="card card-body shadow bg-info p-4">
                        <h1><%= new ProductModel().count() %></h1>
                        <p class="fs-5 m-0">In Stock</p>
                    </div>
                </div>
                <div class="col-md-3" data-aos="fade-up">
                    <div class="card card-body shadow bg-success text-white p-4">
                        <h1><%= new CategoryModel().count() %></h1>
                        <p class="fs-5 m-0">Categories</p>
                    </div>
                </div>
                <!-- END: status cards  -->

                <!-- START: table -->
                <div class="col">
                    <div class="card shadow my-3">
                        <div class="card-header bg-secondary text-white">Best Selling Products</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Description</th>
                                            <th scope="col">Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            List<Product> products = new ProductModel().all();
                                            for (Product product: products) { 
                                        %>
                                            <tr>
                                                <th><%= product.getId() %></th>
                                                <td><%= product.getName() %></td>
                                                <td><%= product.getDescription() %></td>
                                                <td>
                                                    Buy : <%= product.getBuyingPrice() + " " + product.getCurrency() %> <br>
                                                    Sell : <%= product.getSellingPrice() + " " + product.getCurrency() %>
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
