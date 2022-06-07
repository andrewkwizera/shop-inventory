<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Shop Inventory</title>
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/aos.css" />
        <link rel="shortcut icon" href="img/store.png" type="image/x-icon" />
    </head>
    <body>
        <%@ include file="./partials/navbar.jsp" %>

        <!-- START: main content -->
        <main class="container my-4">
            <div class="row justify-content-center">
                <div class="col">
                    <img src="img/web-shopping.svg" alt="Illustration" class="w-100" data-aos="fade-right" />
                </div>
                <div class="col-md-6 my-auto" data-aos="fade-left">
                    <h1>Shop keeping with ease</h1>
                    <h4 class="fw-light my-4">
                        Everything you need to manage your sales, and grow your clientele.
                    </h4>
                </div>
                <div class="col-12 text-center my-4"><h2>Key Features</h2></div>
                <div class="col-md-3" data-aos="zoom-in">
                    <img src="img/discount-announcement.svg" alt="Secure" class="w-100" />
                    <h5 class="text-center my-4">Manage Sales</h5>
                </div>
                <div class="col-md-3" data-aos="zoom-in">
                    <img src="img/community.svg" alt="Secure" class="w-100" />
                    <h5 class="text-center my-4">Get Clients</h5>
                </div>
                <div class="col-md-3" data-aos="zoom-in">
                    <img src="img/bitcoin-transfer.svg" alt="Secure" class="w-100" />
                    <h5 class="text-center my-4">Secure</h5>
                </div>
                <div class="col-md-3" data-aos="zoom-in">
                    <img src="img/designer-life.svg" alt="Secure" class="w-100" />
                    <h5 class="text-center my-4">Online Access</h5>
                </div>
            </div>
        </main>
        <!-- END: main content -->

        <!-- START: footer -->
        <footer class="p-5 bg-dark text-white">
            <div class="container">
                <div class="row justify-content-start">
                    <div class="col my-auto">
                        <p class="fs-5">
                            All rights reserved &copy; 2022 ShopInventory Ltd.
                        </p>
                    </div>
                    <div class="col-md-2">
                        <h5>Quick links</h5>
                        <ul>
                            <li>FAQ</li>
                            <li>Forum</li>
                            <li>Community</li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h5>Get in touch</h5>
                        <ul>
                            <li>Phone : +250 712 345 678</li>
                            <li>Email : info@shopinventory.com</li>
                            <li>Instagram : @shopinventory</li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
        <!-- END: footer -->

        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/aos.js"></script>
        <script>
            AOS.init();
        </script>
    </body>
</html>
