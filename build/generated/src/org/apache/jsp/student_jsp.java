package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class student_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<!-- Website template by freewebsitetemplates.com -->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Uva Wellassa University</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"header\">\n");
      out.write("            <div>\n");
      out.write("                <div id=\"logo\">\n");
      out.write("                    <a href=\"index.html\"><span>Courses Management Centere</span></a>\n");
      out.write("                </div>\n");
      out.write("                <ul id=\"navigation\">\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"index.jsp\">Home</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"aa.html\">About</a>\n");
      out.write("                    </li>\t\t\t\t\n");
 if (session.getAttribute("uid") == null) {
    response.sendRedirect("index.jsp");
}

      out.write("\n");
      out.write("                  \n");
      out.write("\n");
      out.write("                    ");
 if (session.getAttribute("uid") != null) {
      out.write("\n");
      out.write("                    <li> \n");
      out.write("                        <a href=\"logout.jsp \">Logout</a>\n");
      out.write("                    </li>\n");
      out.write("                    ");
 } else {
      out.write("\n");
      out.write("                      <li> \n");
      out.write("                        <a href=\"log.jsp\">Login</a>\n");
      out.write("                    </li>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"contents\">\n");
      out.write("            <div id=\"adbox\">\n");
      out.write("                <img src=\"images/images.jpg\" alt=\"Img\">\n");
      out.write("\n");
      out.write("                ");
 if (session.getAttribute("uid") != null) {
      out.write("\n");
      out.write("                <h1>Hi ");
out.println(session.getAttribute("name"));
      out.write("</h1> \n");
      out.write("\n");
      out.write("                ");
} else {
      out.write("\n");
      out.write("                <h2>Available Courses</h2> \n");
      out.write("                ");
}
      out.write("\n");
      out.write("                <p>\n");
      out.write("                    <a href=\"CST.jsp\"><button type=\"submit\" value=\"Submit\">Computer Science & Technology</button></a>\n");
      out.write("                    <a href=\"AGRI.jsp\"><button type=\"submit\" value=\"Submit\">Agriculture</button></a><br><br>\n");
      out.write("                    <a href=\"MGT.jsp\"><button type=\"submit\" value=\"Submit\">Management</button></a>\n");
      out.write("                    <a href=\"IT.jsp\">   <button type=\"submit\" value=\"Submit\">Information Technology</button></a>\n");
      out.write("                    <a href=\"feedback.jsp\"> <button type=\"submit\" value=\"Submit\">Student Feedback</button></a>\n");
      out.write("                </p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>   \n");
      out.write("\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"wrapper\">\n");
      out.write("                <div id=\"footer-info\"></div>\n");
      out.write("                <p>©2020 Uva Wellassa University</p>\n");
      out.write("                <div id=\"footer-links\">\n");
      out.write("                    <ul> <ul>\n");
      out.write("                            <li><h5>Contact Us</h5></li>\n");
      out.write("                            <li><h5>Badulla,90000<h5></li>\n");
      out.write("\n");
      out.write("                                        <li><h5>Phone: +94 55 2226622</h5></li>\n");
      out.write("                                        <li><h5><a href=\"#\">E-mail: info@uwu.ac.lk</a></h5></li></ul>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        </footer>\n");
      out.write("\n");
      out.write("                                        </body>\n");
      out.write("                                        </html>\n");
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
