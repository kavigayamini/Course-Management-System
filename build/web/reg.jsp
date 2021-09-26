<%-- 
    Document   : reg
    Created on : Jan 7, 2020, 1:37:57 PM
    Author     : Kavindya Gayamini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Uva Wellassa University</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
        <div id="header">
            <div>
                <div id="logo">
                    <a href="index.jsp"><span>Courses Management Center</span></a>
                </div>
                <ul id="navigation">
                    <li>
                        <a href="index.html">Home</a>
                    </li>
                    <li>
                        <a href="aa.html">About</a>
                    </li>				

                    <li class="selected">
                        <a href="log.html">Login</a>
                    </li>
                </ul>
            </div>
        </div>


        <div id="contents">
            <%
                String firstname = request.getParameter("firstname");//variable and field name
                String lastname = request.getParameter("lastname");
               
                String gender = request.getParameter("gender");
              
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String email=request.getParameter("email");
                String degreeprogram=request.getParameter("degreeprogram");
                String address=request.getParameter("address");
               
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc", "root", "");
                    Statement st = con.createStatement();

                    int i = st.executeUpdate("insert into user_details values ('" + firstname + "','" + lastname + "','" + gender + "','" + username + "','" + password+ "', '" + email + "','" + degreeprogram + "','"+address+"')");
                    if (i!=0) {
                        response.sendRedirect("log.html");
                    } else {
                        out.println("Invalid registration");
                    }

                } catch (Exception e) {
                    out.println("<p>Error " + e.getMessage() + "</p>");
                }
            %>

            <div id="adbox">
                <img src="images/register.jpg" alt="Img">
                <h1>Register</h1>
                <form name="form2" action="reg.jsp" method="POST">
                    <table border="0">
                        <tbody>
                            <tr>
                                <td>First Name</td>
                                <td><input type="text" name="firstname" value="" size="33" /></td>
                            </tr>
                            <tr>
                                <td>Last Name</td>
                                <td><input type="text" name="lastname" value="" size="33" /></td>
                            </tr>
                            
                            <tr>
                                <td>Gender</td>
                                <td>
                                    <input type="radio" name="gender" value="Male" /> Male
                                    <input type="radio" name="gender" value="Female" /> Female
                                </td>
                            </tr>
                            <tr>
                                <td>Username</td>
                                <td><input type="text" name="username" value="" size="33" /></td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td><input type="password" name="password" value="" size="34" /></td>
                            </tr>
                            <tr>
                                <td>Email Address</td>
                                <td><input type="text" name="email" value="" size="34" /></td>
                            </tr>
                            <tr>
                                <td>Degree Program</td>
                                <td><input type="text" name="degreeprogram" value="" size="34" /></td>
                            </tr>
                            <tr>
                                <td>Address</td>
                                <td>
                                    <textarea name="address" rows="4" cols="26">
                                    </textarea>
                                </td>
                            </tr>
                            

                            <tr>
                                <td></td>
                                <td style="text-align: right"><input type="submit" value="Register" name="btn1"/></td>
                            </tr>
                        </tbody>
                    </table>

                </form>
            </div>
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
