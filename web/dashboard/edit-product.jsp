<%@page import="model.ProductModel"%>
<%@page import="domain.Product"%>
<%@page import="model.CategoryModel"%>
<%@page import="domain.Category"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Product product = new ProductModel().find(Integer.parseInt(request.getParameter("id"))); %>
<% 
ProductModel model =(ProductModel)request.getAttribute("pm");
                      if(model==null){
                      model=new ProductModel();
                      request.setAttribute("pm", model);
                      }
%>
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
                        <div class="card-header bg-secondary text-white">Edit Product</div>
                        <div class="card-body">
                            <form action="./update-product.jsp" method="post">
                                <div class="mb-3 row">
                                    <label for="name" class="col-sm-3 col-form-label">Product Name</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="name" required="required" value="<%= product.getName() %>"/>
                                    </div>
                                </div>
                                
                                <div class="mb-3 row">
                                    <label for="description" class="col-sm-3 col-form-label">Description</label>
                                    <div class="col-sm-9">
                                        <textarea name="description" rows="2" class="form-control" required="required"><%= product.getDescription()%></textarea>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="category" class="col-sm-3 col-form-label">Category</label>
                                    <div class="col-sm-9">
                                        <select name="category" name="category" class="form-control" required="required">
                                            <option value="<%= product.getCategory().getId() %>"><%= product.getCategory().getName()%></option>
                                            <%
                                                List<Category> categories = new CategoryModel().all();
                                                for (Category category: categories) { 
                                            %>
                                            <option value="<%= category.getId() %>"><%= category.getName() %></option>
                                            <% } %>
                                        </select>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="buying_price" class="col-sm-3 col-form-label">Buying Price</label>
                                    <div class="col-sm-9">
                                        <input type="number" min="0" class="form-control" name="buying_price" required="required" value="<%= product.getBuyingPrice() %>"/><label class="text-danger"><%=model.getSellMsg() %>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="selling_price" class="col-sm-3 col-form-label">Selling Price</label>
                                    <div class="col-sm-9">
                                        <input type="number" min="0" class="form-control" name="selling_price" required="required" value="<%= product.getSellingPrice() %>"/>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="currency" class="col-sm-3 col-form-label">Currency</label>
                                    <div class="col-sm-9">
                                        <select name="currency" name="currency" class="form-control" required="required">
                                            <option value="rwf">RWF - Rwandan Francs</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-center">
                                    <input type='hidden' name='id' value="<%= product.getId()%>">
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
