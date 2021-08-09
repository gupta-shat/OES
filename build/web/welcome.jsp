<%-- 
    Document   : welcome
    Created on : 02-Aug-2021, 4:37:04 pm
    Author     : shatakshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
            String uname=(String)session.getAttribute("username");
            if(uname == null){
                response.sendRedirect("index.jsp");
            }
        %>
        <h1>Welcome Page<%=uname%></h1>
    </body>
</html>