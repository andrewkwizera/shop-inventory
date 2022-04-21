package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class product_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <!--<link rel=\"../index.css\">-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"./index.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("    <section class=\"main__nav\">\n");
      out.write("        <div class=\"nav\">\n");
      out.write("            <div class=\"logo_div\">\n");
      out.write("                <img src=\"https://cdn.logo.com/hotlink-ok/logo-social.png\" alt=\"\" height=\"45px\" width=\"120px\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"userdetails\">\n");
      out.write("                <img src=\"https://images.unsplash.com/photo-1438761681033-6461ffad8d80?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMTgwOTN8MHwxfHNlYXJjaHw1fHxodW1hbnxlbnwwfHx8fDE2NDMwMTk2NTA&ixlib=rb-1.2.1&q=80&w=1080\" height=\"40px\" width=\"40px\" alt=\"\">\n");
      out.write("                <span>John</span>\n");
      out.write("                <i class=\"uil uil-angle-down\"></i>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <section class=\"bodyview\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    <section class=\"sidebar\">\n");
      out.write("        <div class=\"sidebar__menu\">\n");
      out.write("            <div class=\"sidebar__menu_item\">\n");
      out.write("                <i class=\"uil uil-file-alt\"></i>\n");
      out.write("                <span>Transactions</span>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"sidebar__menu\">\n");
      out.write("            <div class=\"sidebar__menu_item\">\n");
      out.write("                <i class=\"uil uil-box\"></i>\n");
      out.write("    \n");
      out.write("                <span>Products</span>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"sidebar__menu\">\n");
      out.write("            <div class=\"sidebar__menu_item\">\n");
      out.write("                <i class=\"uil uil-user\"></i>\n");
      out.write("                <span>User</span>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <section class=\"mainview\">\n");
      out.write("        <div class=\"product__header\">\n");
      out.write("            <h1>Products</h1>\n");
      out.write("            <div class=\"new__btn\">\n");
      out.write("                <span>New</span>\n");
      out.write("                <i class=\"uil uil-plus-circle\"></i>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"product__filters\">\n");
      out.write("            <div class=\"product__search\">\n");
      out.write("                <i class=\"uil uil-search\"></i>\n");
      out.write("                <input type=\"text\" name=\"\" id=\"\" placeholder=\"Search Product...\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"filter__div\">\n");
      out.write("                <select name=\"\" id=\"\" class=\"select__filter\">\n");
      out.write("                    <option value=\"\">Latest to Oldest</option>\n");
      out.write("                    <option value=\"\">Oldest to Latest</option>\n");
      out.write("                </select>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"table__div\">\n");
      out.write("            <table class=\"product__table\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>ProductID</th>\n");
      out.write("                    <th>Name</th>\n");
      out.write("                    <th>Expiry Date</th>\n");
      out.write("                    <th>Status</th>\n");
      out.write("                    <th>Category</th>\n");
      out.write("                    <th>Price</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>23</td>\n");
      out.write("                    <td>Cheese</td>\n");
      out.write("                    <td>12-03-2022</td>\n");
      out.write("                    <td>available</td>\n");
      out.write("                    <td>Food</td>\n");
      out.write("                    <td>3000</td>\n");
      out.write("                    <td>edit</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>23</td>\n");
      out.write("                    <td>Cheese</td>\n");
      out.write("                    <td>12-03-2022</td>\n");
      out.write("                    <td>available</td>\n");
      out.write("                    <td>Food</td>\n");
      out.write("                    <td>3000</td>\n");
      out.write("                    <td>edit</td>\n");
      out.write("                </tr>\n");
      out.write("            </table> </table>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("    \n");
      out.write("        \n");
      out.write("</section>\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("</body>\n");
      out.write("</html>\n");
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
