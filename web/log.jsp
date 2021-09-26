<%-- 
    Document   : login
    Created on : Jan 10, 2020, 11:31:20 AM
    Author     : CST17025
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Course Management Centere</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
        <div id="header">
            <div>
                <div id="logo">
                    <a href="index.jsp"><span>Uva Wellassa University</span></a>
                </div>
                <ul id="navigation">
                    <li>
                        <a href="index.html">Home</a>
                    </li>
                    <li>
                        <a href="aa.html">About</a>
                    </li>				
                    
                    <li class="selected">
                        <a href="log.jsp">Login</a>
                    </li>
                </ul>
            </div>
        </div>
        
     
            
            <div id="adbox">
                <img src="images/first.jpg" alt="Img">
                <h1>Login Here</h1>
                <form name="form1" action="log.jsp" method="POST">
                    <table border="0">
                        <tbody>
                            <tr>
                                <td>Username</td>
                                <td><input type="text" name="username" value="" size="33" /></td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td><input type="password" name="password" value="" size="34" /></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="text-align: right"><input type="submit" value="Sign In" name="btn1" /></td>
                            </tr>
                            <tr>
                                <td>
                                       <div id="contents">
            <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
             
try{
Class.forName("com.mysql.jdbc.Driver");
            Connection con  =DriverManager.getConnection("jdbc:mysql://localhost:3306/abc","root","");
            
            Statement stmt = con.createStatement();
            ResultSet rs;
            rs = stmt.executeQuery ("select * from user_details where username='"+username+"' and password='"+password+"'");
            
            
            if(rs.next()){
                session.setAttribute("uid",rs.getString("username"));
                session.setAttribute("name",rs.getString("firstname"));
                response.sendRedirect("student.jsp");
            }else{
                out.println("<p>Enter correct username and password</p>");
            }
            
}catch(Exception e){
        out.println("<p>Error "+e.getMessage()+ "</p>");
}
            %></div>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">Don't have an account yet? <a href="reg.jsp">Register now</a></td>
                            </tr>
                        </tbody>
                    </table>

                </form>
            </div>

            <footer>
	 <div class="wrapper">
        <div id="footer-info"></div>
		<p>©2020 Uva Wellassa University</p>
        <div id="footer-links">
            <ul> <ul>
                <li><h5>Contact Us</h5></li>
                <li><h5>Badulla,90000<h5></li>
                
                <li><h5>Phone: +94 55 2226622</h5></li>
                <li><h5><a href="#">E-mail: info@uwu.ac.lk</a></h5></li></ul>
            
            
        </div>
		</div>
    </footer>
    </body>
</html>
