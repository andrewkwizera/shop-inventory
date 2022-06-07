package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/./partials/navbar.jsp");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\" />\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("        <title>Login - Shop Inventory</title>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" />\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\" />\r\n");
      out.write("        <link rel=\"shortcut icon\" href=\"img/store.png\" type=\"image/x-icon\" />\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- START: navbar -->\r\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\r\n");
      out.write("\t<div class=\"container-fluid\">\r\n");
      out.write("\t\t<a class=\"navbar-brand\" href=\"#\">\r\n");
      out.write("\t\t\t<img src=\"img/store.png\" alt=\"logo\" width=\"25\" height=\"25\" />\r\n");
      out.write("\t\t\t<span class=\"mx-1\">Shop Inventory</span>\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t<button\r\n");
      out.write("\t\t\tclass=\"navbar-toggler\"\r\n");
      out.write("\t\t\ttype=\"button\"\r\n");
      out.write("\t\t\tdata-bs-toggle=\"collapse\"\r\n");
      out.write("\t\t\tdata-bs-target=\"#navbarSupportedContent\"\r\n");
      out.write("\t\t\taria-controls=\"navbarSupportedContent\"\r\n");
      out.write("\t\t\taria-expanded=\"false\"\r\n");
      out.write("\t\t\taria-label=\"Toggle navigation\"\r\n");
      out.write("\t\t>\r\n");
      out.write("\t\t\t<span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("\t\t</button>\r\n");
      out.write("\t\t<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("\t\t\t<ul class=\"navbar-nav ms-auto mb-2 mb-lg-0\">\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\">\r\n");
      out.write("\t\t\t\t\t<a class=\"nav-link\" aria-current=\"page\" href=\"./index.jsp\">Home</a>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\">\r\n");
      out.write("\t\t\t\t\t<a class=\"nav-link\" href=\"./about.jsp\">About</a>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item dropdown\">\r\n");
      out.write("\t\t\t\t\t<a\r\n");
      out.write("\t\t\t\t\t\tclass=\"nav-link dropdown-toggle\"\r\n");
      out.write("\t\t\t\t\t\thref=\"#\"\r\n");
      out.write("\t\t\t\t\t\tid=\"navbarDropdown\"\r\n");
      out.write("\t\t\t\t\t\trole=\"button\"\r\n");
      out.write("\t\t\t\t\t\tdata-bs-toggle=\"dropdown\"\r\n");
      out.write("\t\t\t\t\t\taria-expanded=\"false\"\r\n");
      out.write("\t\t\t\t\t>\r\n");
      out.write("\t\t\t\t\t\tSupport\r\n");
      out.write("\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t<ul class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"dropdown-item\" href=\"./contact.jsp\">Contact Us</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"dropdown-item\" href=\"./privacy.jsp\">Privacy Policy</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li><hr class=\"dropdown-divider\" /></li>\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"dropdown-item\" href=\"./terms.jsp\">Terms & Conditions</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\">\r\n");
      out.write("\t\t\t\t\t<a class=\"nav-link\" href=\"./login.jsp\">Login</a>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li class=\"nav-item\">\r\n");
      out.write("\t\t\t\t\t<a class=\"nav-link\" href=\"./register.jsp\">Register</a>\r\n");
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
      out.write("                <div class=\"col-md-6 my-auto\">\r\n");
      out.write("                    <form action=\"./authenticate.jsp\" method=\"post\">\r\n");
      out.write("                        <h2 class=\"text-center mb-4\">Login</h2>\r\n");
      out.write("                        <div class=\"mb-3 row\">\r\n");
      out.write("                            <label for=\"email\" class=\"col-sm-2 col-form-label\">Email</label>\r\n");
      out.write("                            <div class=\"col-sm-10\">\r\n");
      out.write("                                <input type=\"text\" class=\"form-control\" name=\"email\" />\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"mb-3 row\">\r\n");
      out.write("                            <label for=\"password\" class=\"col-sm-2 col-form-label\">\r\n");
      out.write("                                Password\r\n");
      out.write("                            </label>\r\n");
      out.write("                            <div class=\"col-sm-10\">\r\n");
      out.write("                                <input type=\"password\" class=\"form-control\" name=\"password\" />\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"d-flex justify-content-center\">\r\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-primary\">Submit</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </main>\r\n");
      out.write("        <!-- END: main content -->\r\n");
      out.write("\r\n");
      out.write("        <script src=\"js/bootstrap.bundle.min.js\"></script>\r\n");
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
