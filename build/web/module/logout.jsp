<%-- 
    Document   : logout
    Created on : 06-Aug-2021, 7:27:19 am
    Author     : shatakshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
    session.removeAttribute("username");
    session.invalidate();
    response.sendRedirect("../index.jsp");
%>
