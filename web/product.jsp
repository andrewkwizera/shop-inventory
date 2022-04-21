<%-- 
    Document   : product
    Created on : Apr 20, 2022, 5:56:57 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--<link rel="../index.css">-->
        <link rel="stylesheet" href="./index.css">
    </head>
    <body>

    <section class="main__nav">
        <div class="nav">
            <div class="logo_div">
                <img src="https://cdn.logo.com/hotlink-ok/logo-social.png" alt="" height="45px" width="120px">
            </div>
            <div class="userdetails">
                <img src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMTgwOTN8MHwxfHNlYXJjaHw1fHxodW1hbnxlbnwwfHx8fDE2NDMwMTk2NTA&ixlib=rb-1.2.1&q=80&w=1080" height="40px" width="40px" alt="">
                <span>John</span>
                <i class="uil uil-angle-down"></i>

            </div>
        </div>
    </section>


    <section class="bodyview">


    <section class="sidebar">
        <div class="sidebar__menu">
            <div class="sidebar__menu_item">
                <i class="uil uil-file-alt"></i>
                <span>Transactions</span>
            </div>
        </div>
        <div class="sidebar__menu">
            <div class="sidebar__menu_item">
                <i class="uil uil-box"></i>
    
                <span>Products</span>
            </div>
        </div>
        <div class="sidebar__menu">
            <div class="sidebar__menu_item">
                <i class="uil uil-user"></i>
                <span>User</span>
            </div>
        </div>
    
    </section>


    <section class="mainview">
        <div class="product__header">
            <h1>Products</h1>
            <div class="new__btn">
                <span>New</span>
                <i class="uil uil-plus-circle"></i>
            </div>
        </div>


        <div class="product__filters">
            <div class="product__search">
                <i class="uil uil-search"></i>
                <input type="text" name="" id="" placeholder="Search Product...">
            </div>


            <div class="filter__div">
                <select name="" id="" class="select__filter">
                    <option value="">Latest to Oldest</option>
                    <option value="">Oldest to Latest</option>
                </select>
            </div>
        </div>


        <div class="table__div">
            <table class="product__table">
                <tr>
                    <th>ProductID</th>
                    <th>Name</th>
                    <th>Expiry Date</th>
                    <th>Status</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
                <tr>
                    <td>23</td>
                    <td>Cheese</td>
                    <td>12-03-2022</td>
                    <td>available</td>
                    <td>Food</td>
                    <td>3000</td>
                    <td>edit</td>
                </tr>
                <tr>
                    <td>23</td>
                    <td>Cheese</td>
                    <td>12-03-2022</td>
                    <td>available</td>
                    <td>Food</td>
                    <td>3000</td>
                    <td>edit</td>
                </tr>
            </table> </table>
        </div>

    </section>

    
        
</section>


    
</body>
</html>