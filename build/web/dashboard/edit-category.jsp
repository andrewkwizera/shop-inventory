<%@page import="model.CategoryModel"%>
<%@page import="domain.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Category category = new CategoryModel().find(Integer.parseInt(request.getParameter("id"))); %>
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
                        <div class="card-header bg-secondary text-white">Edit Category</div>
                        <div class="card-body">
                            <form action="./update-category.jsp" method="post">
                                <div class="mb-3 row">
                                    <label for="name" class="col-sm-3 col-form-label">
                                        Category Name
                                    </label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="name" required="required" value="<%= category.getName() %>" />
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="description" class="col-sm-3 col-form-label">
                                        Description
                                    </label>
                                    <div class="col-sm-9">
                                        <textarea name="description" rows="2" class="form-control" required="required"><%= category.getDescription() %></textarea>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-center">
                                    <input type='hidden' name='id' value="<%= category.getId()%>">
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
