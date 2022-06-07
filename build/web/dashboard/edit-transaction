<%@page import="domain.TransactionType"%>
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
                        <div class="card-header bg-secondary text-white">Add Transaction</div>
                        <div class="card-body">
                            <form action="./save-transaction.jsp" method="post">
                                <div class="mb-3 row">
                                    <label for="product" class="col-sm-3 col-form-label">Product</label>
                                    <div class="col-sm-9">
                                        <select name="product" id="product" class="form-control" required="required">
                                            <option value="">-- select --</option>
                                            <%
                                                List<Product> products = new ProductModel().all();
                                                for (Product product: products) { 
                                            %>
                                            <option value="<%= product.getId() %>"><%= product.getName() %> (Buy: <%= product.getBuyingPrice() %> / Sell: <%= product.getSellingPrice() %>)</option>
                                            <% } %>
                                        </select>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="type" class="col-sm-3 col-form-label">Transaction Type</label>
                                    <div class="col-sm-9">
                                        <select name="type" id="transaction" class="form-control" required="required">
                                            <option value="">-- select --</option>
                                            <option value="<%= TransactionType.ADD_STOCK %>">Add Stock</option>
                                            <option value="<%= TransactionType.SALE %>">Sale</option>
                                            <option value="<%= TransactionType.EXPIRED %>">Expired</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="description" class="col-sm-3 col-form-label">Description</label>
                                    <div class="col-sm-9">
                                        <textarea name="description" rows="2" class="form-control" required="required"></textarea>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="quantity" class="col-sm-3 col-form-label">Quantity</label>
                                    <div class="col-sm-9">
                                        <input type="number" class="form-control" name="quantity" required="required"/>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-center">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
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
