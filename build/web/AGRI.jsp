
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Uva Wellassa University</title>
    </head>
    <body>
        <h1>Courses Management Centere</h1>
        <table border="1">
            <tr>
                <td>Course Code</td>    
                <td>Course Name</td>
                <td>Lecturer</td>

            </tr>
            <%

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc", "root", "");
                    Statement stmt = con.createStatement();
                    String sql = "SELECT * FROM course";
                    ResultSet rs = stmt.executeQuery(sql);
                    while (rs.next()) {
            %>
            <tr>
                <td><%=rs.getString("course_code")%></td>
                <td><%=rs.getString("course_name")%></td>
                <td><%=rs.getString("lecturer")%></td>

            </tr>
            <%  }%>


            <%} catch (Exception ex) {
                    ex.printStackTrace();
                }%>
        </table>

    </body>
</html>
