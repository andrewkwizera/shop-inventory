<%@page import="model.UserModel"%>
<%@page import="domain.User"%>
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
                        <div class="card-header bg-secondary text-white">All Users</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Names</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            List<User> users = new UserModel().all();
                                            for (User user: users) { 
                                        %>
                                            <tr>
                                                <th><%= user.getId() %></th>
                                                <td><%= user.getFullName() %></td>
                                                <td><%= user.getEmail() %></td>
                                                <td>
                                                    <a href="./edit-category.jsp?id=<%= user.getId() %>" class="btn btn-sm btn-sm btn-primary">
                                                        Edit
                                                    </a>
                                                    <a href="./show-category.jsp?id=<%= user.getId() %>" class="btn btn-sm btn-sm btn-success">
                                                        View
                                                    </a>
                                                    <a href="./detele-category.jsp?id=<%= user.getId() %>" class="btn btn-sm btn-sm btn-warning">
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
    </body>
</html>
