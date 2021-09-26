<%-- 
    Document   : new
    Created on : Jan 27, 2020, 5:50:33 AM
    Author     : Nisansala
--%>
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>


        <title>Uva Wellassa University</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
        <div id="header">
            <div>
                <div id="logo">
                    <a href="index.jsp"><span>Course Management Center</span></a>
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
        
                <center><h1>Student Feedback</h1></center>
                <table class="table table-bordered table-striped">


                    <div class="row-fluid">
                        <form id="new-user">
                            <center><input type="text" name=degree placeholder="Degree" /></center>

                            <center> <textarea name="feedback" rows="4" cols="26"> </textarea> </center><br>

                            <center><input type="submit" value="Send" name="send"/></center>
                        </form>	
</div>


                    

                    <%
                        String degree = request.getParameter("degree");
                        String feedback = request.getParameter("feedback");

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc", "root", "");
                            Statement st = conn.createStatement();

                            int i = st.executeUpdate("insert into feedbacks values ('" + degree + "','" + feedback + "')");
                            if (i > 0) {
                                response.sendRedirect("new.jsp");
                            } else {
                                out.println("Invalid feedback");
                            }

                        } catch (Exception e) {
                            out.println("<p>Error " + e.getMessage() + "</p>");
                        }
                    %>

                </table>
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