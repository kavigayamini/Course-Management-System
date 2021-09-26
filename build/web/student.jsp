<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
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
                    <a href="index.html"><span>Courses Management Center</span></a>
                </div>
                <ul id="navigation">
                    <li>
                        <a href="index.jsp">Home</a>
                    </li>
                    <li>
                        <a href="aa.html">About</a>
                    </li>				
<% if (session.getAttribute("uid") == null) {
    response.sendRedirect("index.jsp");
}
%>
                  

                    <% if (session.getAttribute("uid") != null) {%>
                    <li> 
                        <a href="logout.jsp ">Logout</a>
                    </li>
                    <% } else {%>
                      <li> 
                        <a href="log.jsp">Login</a>
                    </li>
                    <%}%>
                </ul>
            </div>
        </div>
        <div id="contents">
            <div id="adbox">
                <img src="images/images.jpg" alt="Img">

                <% if (session.getAttribute("uid") != null) {%>
                <h1>Hi <%out.println(session.getAttribute("name"));%></h1> 

                <%} else {%>
                <h2>Available Courses</h2> 
                <%}%>
                <p>
                    <a href="CST.jsp"><button type="submit" value="Submit">Computer Science & Technology</button></a>
                    <a href="AGRI.jsp"><button type="submit" value="Submit">Agriculture</button></a><br><br>
                    <a href="MGT.jsp"><button type="submit" value="Submit">Management</button></a>
                    <a href="IT.jsp">   <button type="submit" value="Submit">Information Technology</button></a>
                    <a href="feedback.jsp"> <button type="submit" value="Submit">Student Feedback</button></a>
                </p>
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
