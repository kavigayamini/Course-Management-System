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
                    <li class="selected">
                        <a href="index.jsp">Home</a>
                    </li>
                    <li>
                        <a href="aa.html">About</a>
                    </li>				

                  

                    <%
                       
                        if (session.getAttribute("uid") != null) {%>
                    <li> 
                        <a href="logout.jsp ">Logout</a>
                    </li>
                    <% } else {%>
                    <li> 
                        <a href="log.html">Login</a>
                    </li>
                    <%}%>
                </ul>
            </div>
        </div>
        <div id="contents">
            <div id="adbox">
                <img src="images/first.jpg" alt="Img">

                <% if (session.getAttribute("uid") != null) {%>
                <h1>Hi <%out.println(session.getAttribute("name"));%></h1> 

                <%} else {%>
                <h1>Uva Wellassa University</h1> 
                <%}%>
                <p>
                    Be the center of excellence for value addition to the national resource base
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
