<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>About - Shop Inventory</title>
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
                    <form action="./authenticate.jsp" method="post">
                        <h2 class="text-center mb-4">About</h2>
                        <p>
                            If you need to keep track of your stock of any kind of items - this application can help you to do it. 
                            It can be used as a stock management tool or inventory tracker at home or in a warehouse. 
                            A small shop can use it for sales and purchases management. 
                            Even big companies use it mostly as a data collection terminal to exchange with back-office through Excel files import and export.
                        </p>
                    </form>
                </div>
            </div>
        </main>
        <!-- END: main content -->

        <script src="js/bootstrap.bundle.min.js"></script>
    </body>
</html>
