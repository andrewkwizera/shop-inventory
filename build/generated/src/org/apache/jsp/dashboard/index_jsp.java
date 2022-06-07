package org.apache.jsp.dashboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.CategoryModel;
import model.ProductModel;
import domain.Product;
import java.util.List;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/dashboard/../partials/navbar-dashboard.jsp");
    _jspx_dependants.add("/dashboard/../partials/sidebar.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\" />\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("        <title>Shop Inventory</title>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/bootstrap.min.css\" />\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/style.css\" />\r\n");
      out.write("        <link rel=\"shortcut icon\" href=\"../img/store.png\" type=\"image/x-icon\" />\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- START: navbar -->\r\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\r\n");
      out.write("\t<div class=\"container-fluid\">\r\n");
      out.write("\t\t<a class=\"navbar-brand\" href=\"#\">\r\n");
      out.write("\t\t\t<img src=\"../img/store.png\" alt=\"logo\" width=\"25\" height=\"25\" />\r\n");
      out.write("\t\t\t<span class=\"mx-1\">Shop Inventory - ");
      out.print( session.getAttribute("names").toString() );
      out.write("</span>\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("\t\t\t<span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("\t\t</button>\r\n");
      out.write("\t\t<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("\t\t\t<ul class=\"navbar-nav ms-auto mb-2 mb-lg-0\">\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\">\r\n");
      out.write("\t\t\t\t\t<a class=\"nav-link\" aria-current=\"page\" href=\"../index.jsp\">Home</a>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\">\r\n");
      out.write("\t\t\t\t\t<a class=\"nav-link\" href=\"../about.jsp\">About</a>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item dropdown\">\r\n");
      out.write("\t\t\t\t\t<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n");
      out.write("\t\t\t\t\t\tSupport\r\n");
      out.write("\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t<ul class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"dropdown-item\" href=\"../contact.jsp\">Contact Us</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"dropdown-item\" href=\"../privacy.jsp\">Privacy Policy</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li><hr class=\"dropdown-divider\" /></li>\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"dropdown-item\" href=\"../terms.jsp\">\r\n");
      out.write("\t\t\t\t\t\t\t\tTerms & Conditions\r\n");
      out.write("\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\">\r\n");
      out.write("\t\t\t\t\t<a class=\"nav-link\" href=\"./logout.jsp\">Logout</a>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</nav>\r\n");
      out.write("<!-- END: navbar -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- START: main content -->\r\n");
      out.write("        <main class=\"container my-4\">\r\n");
      out.write("            <div class=\"row justify-content-center\">\r\n");
      out.write("                <!-- START: status cards  -->\r\n");
      out.write("                <div class=\"col-md-3\">\r\n");
      out.write("                    <div class=\"card card-body shadow bg-primary text-white p-4\">\r\n");
      out.write("                        <h1>");
      out.print( new ProductModel().count() );
      out.write("</h1>\r\n");
      out.write("                        <p class=\"fs-5 m-0\">Products</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-md-3\">\r\n");
      out.write("                    <div class=\"card card-body shadow bg-warning p-4\">\r\n");
      out.write("                        <h1>");
      out.print( new ProductModel().count() );
      out.write("</h1>\r\n");
      out.write("                        <p class=\"fs-5 m-0\">Sales / Sold</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-md-3\">\r\n");
      out.write("                    <div class=\"card card-body shadow bg-info p-4\">\r\n");
      out.write("                        <h1>");
      out.print( new ProductModel().count() );
      out.write("</h1>\r\n");
      out.write("                        <p class=\"fs-5 m-0\">In Stock</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-md-3\">\r\n");
      out.write("                    <div class=\"card card-body shadow bg-success text-white p-4\">\r\n");
      out.write("                        <h1>");
      out.print( new CategoryModel().count() );
      out.write("</h1>\r\n");
      out.write("                        <p class=\"fs-5 m-0\">Categories</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- END: status cards  -->\r\n");
      out.write("\r\n");
      out.write("                <!-- START: table -->\r\n");
      out.write("                <div class=\"col\">\r\n");
      out.write("                    <div class=\"card shadow my-3\">\r\n");
      out.write("                        <div class=\"card-header bg-secondary text-white\">Best Selling Products</div>\r\n");
      out.write("                        <div class=\"card-body\">\r\n");
      out.write("                            <div class=\"table-responsive\">\r\n");
      out.write("                                <table class=\"table table-bordered\">\r\n");
      out.write("                                    <thead>\r\n");
      out.write("                                        <tr>\r\n");
      out.write("                                            <th scope=\"col\">#</th>\r\n");
      out.write("                                            <th scope=\"col\">Name</th>\r\n");
      out.write("                                            <th scope=\"col\">Description</th>\r\n");
      out.write("                                            <th scope=\"col\">Price</th>\r\n");
      out.write("                                        </tr>\r\n");
      out.write("                                    </thead>\r\n");
      out.write("                                    <tbody>\r\n");
      out.write("                                        ");

                                            List<Product> products = new ProductModel().all();
                                            for (Product product: products) { 
                                        
      out.write("\r\n");
      out.write("                                            <tr>\r\n");
      out.write("                                                <th>");
      out.print( product.getId() );
      out.write("</th>\r\n");
      out.write("                                                <td>");
      out.print( product.getName() );
      out.write("</td>\r\n");
      out.write("                                                <td>");
      out.print( product.getDescription() );
      out.write("</td>\r\n");
      out.write("                                                <td>\r\n");
      out.write("                                                    Buy : ");
      out.print( product.getBuyingPrice() + " " + product.getCurrency() );
      out.write(" <br>\r\n");
      out.write("                                                    Sell : ");
      out.print( product.getSellingPrice() + " " + product.getCurrency() );
      out.write("\r\n");
      out.write("                                                </td>\r\n");
      out.write("                                            </tr>\r\n");
      out.write("                                            ");
 } 
      out.write("\r\n");
      out.write("                                    </tbody>\r\n");
      out.write("                                </table>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- END: table -->\r\n");
      out.write("\r\n");
      out.write("                ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- START: sidebar -->\r\n");
      out.write("<div class=\"col-md-3\">\r\n");
      out.write("\t<h4 class=\"text-center my-3\">Quick Menu</h4>\r\n");
      out.write("\t<div class=\"list-group shadow mb-3\">\r\n");
      out.write("\t\t<a href=\"./index.jsp\" class=\"list-group-item list-group-item-action\" aria-current=\"true\">\r\n");
      out.write("\t\t\tDashboard &rarr;\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<a href=\"./all-product.jsp\" class=\"list-group-item list-group-item-action\">\r\n");
      out.write("\t\t\tAll Products &rarr;\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<a href=\"./add-product.jsp\" class=\"list-group-item list-group-item-action\">\r\n");
      out.write("\t\t\tAdd Product &rarr;\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<a\r\n");
      out.write("\t\t\thref=\"./all-transaction.jsp\"\r\n");
      out.write("\t\t\tclass=\"list-group-item list-group-item-action\"\r\n");
      out.write("\t\t>\r\n");
      out.write("\t\t\tAll Transactions &rarr;\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<a\r\n");
      out.write("\t\t\thref=\"./add-transaction.jsp\"\r\n");
      out.write("\t\t\tclass=\"list-group-item list-group-item-action\"\r\n");
      out.write("\t\t>\r\n");
      out.write("\t\t\tAdd Transactions &rarr;\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<a href=\"./all-category.jsp\" class=\"list-group-item list-group-item-action\">\r\n");
      out.write("\t\t\tAll Categories &rarr;\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<a href=\"./add-category.jsp\" class=\"list-group-item list-group-item-action\">\r\n");
      out.write("\t\t\tAdd Category &rarr;\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<a href=\"./all-user.jsp\" class=\"list-group-item list-group-item-action\">\r\n");
      out.write("\t\t\tAll Users &rarr;\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("<!-- END: sidebar  -->\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </main>\r\n");
      out.write("        <!-- END: main content -->\r\n");
      out.write("\r\n");
      out.write("        <script src=\"../js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
