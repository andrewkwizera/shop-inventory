<%-- 
    Document   : sale
    Created on : Apr 20, 2022, 5:57:10 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
    <script src="../javascript/index.js"></script>

    <section class="main__nav">
        <div class="nav">
            <div class="logo_div">
                <img src="https://cdn.logo.com/hotlink-ok/logo-social.png" alt="" height="45px" width="120px">
            </div>
            <div class="userdetails">
                <img src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMTgwOTN8MHwxfHNlYXJjaHw1fHxodW1hbnxlbnwwfHx8fDE2NDMwMTk2NTA&ixlib=rb-1.2.1&q=80&w=1080" height="30px" width="30px" alt="">
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
                <h3>Sales</h3>
                <div class="new__btn">
                    
                       New Sale
            
                    <i id="modal-btn" class="uil uil-plus-circle"></i>

                    <div id="newsale-modal" class="modal">
                        <div class="modal-content">
                          <div class="modal-header">
                            <span class="close">&times;</span>
                            <h2>Add Sales</h2>
                          </div>
                          <div class="modal-body">
                            <form action="#">
                                <div class="data">
                                   <label>Product Id</label>
                                   <input type="text" required>
                                </div>
                                <div class="data">
                                   <label>Product Name</label>
                                   <input type="text" required>
                                </div>
                               <div class="data">
                                   <lable>Status</lable>
                                   <input type="text" required>
                               </div>
                               <div class="data">
                                    <lable>Category</lable>
                                    <input type="text" required>
                                </div>
                                <div class="data">
                                    <lable>Quantity</lable>
                                    <input type="text" required>
                                </div>
                                <div class="data">
                                    <lable>Unit Price</lable>
                                    <input type="text" required>
                                </div>
                                <div class="data">
                                    <lable>TotalPrice</lable>
                                    <input type="text" required>
                                </div>
                                <div class="btn">
                                   <div class="inner"></div>
                                   <button type="submit">ADD</button>
                                </div>
                                
                             </form>
                        </div>
                        
                          </div>
                          <!-- <div class="modal-footer">
                            <h3>Modal Footer</h3>
                          </div> -->
                        </div>
                      </div>
                    <!-- <div class="container">
                        <label for="show" class="close-btn fas fa-times" title="close"></label>
                        <div class="text">
                           Login Form
                        </div>
                        <form action="#">
                           <div class="data">
                              <label>Email or Phone</label>
                              <input type="text" required>
                           </div>
                           <div class="data">
                              <label>Password</label>
                              <input type="password" required>
                           </div>
                           <div class="forgot-pass">
                              <a href="#">Forgot Password?</a>
                           </div>
                           <div class="btn">
                              <div class="inner"></div>
                              <button type="submit">login</button>
                           </div>
                           <div class="signup-link">
                              Not a member? <a href="#">Signup now</a>
                           </div>
                        </form>
                     </div> -->
                </div>
            </div>


            <div class="product__filters">
                <div class="product__search">
                    <i class="uil uil-search"></i>
                    <input type="text" name="" id="" placeholder="Search Sales...">
                </div>

                <div class="filter__div">
                    <label for="">Filter</label>
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
                        <!-- <th>Expiry Date</th>-->
                        <th>Status</th>
                        <th>Category</th>
                        <th>Quantity</th>
                        <th>Unit Price</th>
                        <th>TotalPrice</th>
                        <th>Date</th>
                        <!-- <th>Action</th>-->
                    </tr>
                    <tr>
                        <td>23</td>
                        <td>Cheese</td>
                        <!--<td>12-03-2022</td>-->
                        <td>Sold</td>
                        <td>Food</td>
                        <td>2 Tins</td>
                        <td>1500</td>
                        <td>3000</td>
                        <td>12-03-2022</td>
                    </tr>
                    <tr>
                        <td>23</td>
                        <td>Cheese</td>
                        <!--<td>12-03-2022</td>-->
                        <td>Given on credit</td>
                        <td>Food</td>
                        <td>2 Tins</td>
                        <td>1500</td>
                        <td>3000</td>
                        <td>12-03-2022</td>
                    </tr>
                </table> </table>
            </div>

        </section>



    </section>



</body>
</html>
