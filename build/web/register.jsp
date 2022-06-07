<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Register - Shop Inventory</title>
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="shortcut icon" href="img/store.png" type="image/x-icon" />
    </head>
    <body>
        <%@ include file="./partials/navbar.jsp" %>

        <!-- START: main content -->
        <main class="container my-4">
            <div class="row justify-content-center">
                <div class="col-md-6 my-auto">
                        <form action="./save-user.jsp" method="post">
                                <h2 class="text-center mb-4">Register</h2>
                                <div class="mb-3 row">
                                    <label for="names" class="col-sm-3 col-form-label">Full Names</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="names" required="required"/>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="email" class="col-sm-3 col-form-label">Email</label>
                                    <div class="col-sm-9">
                                        <input type="email" class="form-control" name="email" required="required"/>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="password" class="col-sm-3 col-form-label">Password</label>
                                    <div class="col-sm-9">
                                        <input type="password" class="form-control" name="password" required="required"/>
                                    </div>
                                </div>
                                <div class="mb-3 row">
                                    <label for="confirm" class="col-sm-3 col-form-label">Confirm</label>
                                    <div class="col-sm-9">
                                        <input type="password" class="form-control" id="confirm" required="required"/>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-center">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                        </form>
                </div>
            </div>
        </main>
        <!-- END: main content -->

        <script src="js/bootstrap.bundle.min.js"></script>
    </body>
</html>
