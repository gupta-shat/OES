<%-- 
    Document   : Dashboard
    Created on : 02-Aug-2021, 9:58:03 pm
    Author     : shatakshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Dashboard</title>
    </head>
    <body>
            <%
            String uname=(String)session.getAttribute("username");
            if(uname == null){
                response.sendRedirect("index.jsp");
            }
        %>
        <h1>Welcome <%=uname%></h1>
    </body>
</html>