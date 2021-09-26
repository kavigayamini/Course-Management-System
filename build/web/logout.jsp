<%-- 
    Document   : logout
    Created on : Jan 7, 2020, 5:37:30 PM
    Author     : CST17025
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
session.invalidate();
response.sendRedirect("index.jsp");

%>
