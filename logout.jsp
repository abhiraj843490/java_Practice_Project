<%-- 
    Document   : logout
    Created on : 30 Jan, 2022, 3:09:04 PM
    Author     : ABHIRAJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout Page</title>
        <link rel = "icon" href="./img/logo.jpg"type = "image/x-icon">
    </head>
    <body>
        <%session.invalidate();%>
        <jsp:forward page="index.jsp"/>
    </body>
</html>
