<%@page import="domain.TransactionType"%>
<%@page import="model.ProductModel"%>
<%@page import="model.TransactionModel"%>
<%@page import="domain.Transaction"%>
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
        <link rel="shortcut icon" href="../img/store.png" type="image/x-icon" />
    </head>
    <body>
        <%@ include file="../partials/navbar-dashboard.jsp" %>

        <!-- START: main content -->
        <main class="container my-4">
            <div class="row justify-content-center">
                <!-- START: table -->
                <div class="col">
                    <div class="card card-body shadow my-3">
                        <ul class="nav nav-pills nav-fill mb-2">
                            <li class="nav-item">
                                <a href="#all" class="nav-link active" data-bs-toggle="tab">
                                    All Transactions
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#sales" class="nav-link" data-bs-toggle="tab">
                                    Sales / Sold
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#in-stock" class="nav-link" data-bs-toggle="tab">
                                    In Stock
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#expired" class="nav-link" data-bs-toggle="tab">
                                    Expired
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="all">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Product</th>
                                                <th scope="col">Quantity</th>
                                                <th scope="col">Total Price</th>
                                                <th scope="col">Transaction Type</th>
                                                <th scope="col">Description</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                ProductModel productModel = new ProductModel();
                                                List<Transaction> transactions = new TransactionModel().all();
                                                for (Transaction transaction: transactions) { 
                                            %>
                                                <tr>
                                                    <th><%= transaction.getId() %></th>
                                                    <td><%= transaction.getProduct().getName() %></td>
                                                    <td><%= transaction.getQuantity() %></td>
                                                    <td><%= transaction.getTotalPrice() %></td>
                                                    <td><%= transaction.getType() %></td>
                                                    <td><%= transaction.getDescription() %></td>

                                                    <td>
                                                        <a href="./edit-transaction.jsp?id=<%= transaction.getId() %>" class="btn btn-sm btn-sm btn-primary">
                                                            Edit
                                                        </a>
                                                        <a href="./show-transaction.jsp?id=<%= transaction.getId() %>" class="btn btn-sm btn-sm btn-success">
                                                            View
                                                        </a>
                                                        <a href="./delete-transaction.jsp?id=<%= transaction.getId() %>" class="btn btn-sm btn-sm btn-warning">
                                                            Delete
                                                        </a>
                                                    </td>
                                                </tr>
                                            <% } %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="sales">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Product</th>
                                                <th scope="col">Quantity</th>
                                                <th scope="col">Total Price</th>
                                                <th scope="col">Transaction Type</th>
                                                <th scope="col">Description</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                for (Transaction transaction: transactions) { 
                                                    if (transaction.getType() == TransactionType.SALE) {
                                            %>
                                                <tr>
                                                    <th><%= transaction.getId() %></th>
                                                    <td><%= transaction.getProduct().getName() %></td>
                                                    <td><%= transaction.getQuantity() %></td>
                                                    <td><%= transaction.getTotalPrice() %></td>
                                                    <td><%= transaction.getType() %></td>
                                                    <td><%= transaction.getDescription() %></td>

                                                    <td>
                                                        <a href="./edit-transaction.jsp?id=<%= transaction.getId() %>" class="btn btn-sm btn-sm btn-primary">
                                                            Edit
                                                        </a>
                                                        <a href="./show-transaction.jsp?id=<%= transaction.getId() %>" class="btn btn-sm btn-sm btn-success">
                                                            View
                                                        </a>
                                                        <a href="./delete-transaction.jsp?id=<%= transaction.getId() %>" class="btn btn-sm btn-sm btn-warning">
                                                            Delete
                                                        </a>
                                                    </td>
                                                </tr>
                                            <% } } %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="in-stock">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Product</th>
                                                <th scope="col">Quantity</th>
                                                <th scope="col">Total Price</th>
                                                <th scope="col">Transaction Type</th>
                                                <th scope="col">Description</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                for (Transaction transaction: transactions) { 
                                                    if (transaction.getType() == TransactionType.ADD_STOCK) {
                                            %>
                                                <tr>
                                                    <th><%= transaction.getId() %></th>
                                                    <td><%= transaction.getProduct().getName() %></td>
                                                    <td><%= transaction.getQuantity() %></td>
                                                    <td><%= transaction.getTotalPrice() %></td>
                                                    <td><%= transaction.getType() %></td>
                                                    <td><%= transaction.getDescription() %></td>

                                                    <td>
                                                        <a href="./edit-transaction.jsp?id=<%= transaction.getId() %>" class="btn btn-sm btn-sm btn-primary">
                                                            Edit
                                                        </a>
                                                        <a href="./show-transaction.jsp?id=<%= transaction.getId() %>" class="btn btn-sm btn-sm btn-success">
                                                            View
                                                        </a>
                                                        <a href="./delete-transaction.jsp?id=<%= transaction.getId() %>" class="btn btn-sm btn-sm btn-warning">
                                                            Delete
                                                        </a>
                                                    </td>
                                                </tr>
                                            <% } } %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="expired">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Product</th>
                                                <th scope="col">Quantity</th>
                                                <th scope="col">Total Price</th>
                                                <th scope="col">Transaction Type</th>
                                                <th scope="col">Description</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                for (Transaction transaction: transactions) {
                                                    if (transaction.getType() == TransactionType.EXPIRED) {

                                            %>
                                                <tr>
                                                    <th><%= transaction.getId() %></th>
                                                    <td><%= transaction.getProduct().getName() %></td>
                                                    <td><%= transaction.getQuantity() %></td>
                                                    <td><%= transaction.getTotalPrice() %></td>
                                                    <td><%= transaction.getType() %></td>
                                                    <td><%= transaction.getDescription() %></td>

                                                    <td>
                                                        <a href="./edit-transaction.jsp?id=<%= transaction.getId() %>" class="btn btn-sm btn-sm btn-primary">
                                                            Edit
                                                        </a>
                                                        <a href="./show-transaction.jsp?id=<%= transaction.getId() %>" class="btn btn-sm btn-sm btn-success">
                                                            View
                                                        </a>
                                                        <a href="./delete-transaction.jsp?id=<%= transaction.getId() %>" class="btn btn-sm btn-sm btn-warning">
                                                            Delete
                                                        </a>
                                                    </td>
                                                </tr>
                                            <% } } %>
                                        </tbody>
                                    </table>
                                </div>
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
    </body>
</html>
