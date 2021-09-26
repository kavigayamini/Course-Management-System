package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!-- Website template by freewebsitetemplates.com -->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Course Management Centere</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"header\">\n");
      out.write("            <div>\n");
      out.write("                <div id=\"logo\">\n");
      out.write("                    <a href=\"index.jsp\"><span>Uva Wellassa University</span></a>\n");
      out.write("                </div>\n");
      out.write("                <ul id=\"navigation\">\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"index.html\">Home</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"about.html\">About</a>\n");
      out.write("                    </li>\t\t\t\t\n");
      out.write("                    \n");
      out.write("                    <li class=\"selected\">\n");
      out.write("                        <a href=\"log.html\">Login</a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div id=\"contents\">\n");
      out.write("            ");

            String username = request.getParameter("username");
            String password = request.getParameter("password");
              
try{
Class.forName("com.mysql.jdbc.Driver");
            Connection con  =DriverManager.getConnection("jdbc:mysql://localhost:3306/abc","root","");
            
            Statement stmt = con.createStatement();
            ResultSet rs;
            rs = stmt.executeQuery ("select * from user_details where username='"+username+"' and password='"+password+"'");
            
            
            if(rs.next()){
           //session.setAttribute("uid",rs.getString("id"));
           response.sendRedirect("index.jsp?username="+rs.getString("firstname"));
           out.println("Welcome "+username);
            }else{
                response.sendRedirect("login.jsp");
//out.println("<p>Invalid Login, Try with Correct Username and Password</p>");
            }
            
}catch(Exception e){
out.println("<p>Error "+e.getMessage()+ "</p>");
}
            
      out.write("</div>\n");
      out.write("            \n");
      out.write("            <div id=\"adbox\">\n");
      out.write("                <img src=\"images/login.png\" alt=\"Img\">\n");
      out.write("                <h1>Login Here</h1>\n");
      out.write("                <form name=\"form1\" action=\"login.jsp\" method=\"POST\">\n");
      out.write("                    <table border=\"0\">\n");
      out.write("                        <tbody>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Username</td>\n");
      out.write("                                <td><input type=\"text\" name=\"username\" value=\"\" size=\"33\" /></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Password</td>\n");
      out.write("                                <td><input type=\"password\" name=\"password\" value=\"\" size=\"34\" /></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td></td>\n");
      out.write("                                <td style=\"text-align: right\"><input type=\"submit\" value=\"Sign In\" name=\"btn1\" /></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td colspan=\"2\">Don't have an account yet? <a href=\"reg.jsp\">Register now</a></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <footer>\n");
      out.write("\t <div class=\"wrapper\">\n");
      out.write("        <div id=\"footer-info\"></div>\n");
      out.write("\t\t<p>©2020 Uva Wellassa University</p>\n");
      out.write("        <div id=\"footer-links\">\n");
      out.write("            <ul> <ul>\n");
      out.write("                <li><h5>Contact Us</h5></li>\n");
      out.write("                <li><h5>Badulla,90000<h5></li>\n");
      out.write("                \n");
      out.write("                <li><h5>Phone: +94 55 2226622</h5></li>\n");
      out.write("                <li><h5><a href=\"#\">E-mail: info@uwu.ac.lk</a></h5></li></ul>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("\t\t</div>\n");
      out.write("    </footer>\n");
      out.write("    </body>\n");
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
