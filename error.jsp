<%-- 
    Document   : error
    Created on : 30 Jan, 2022, 11:19:42 AM
    Author     : ABHIRAJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
        <link rel = "icon" href="./img/logo.jpg"type = "image/x-icon">
    </head>
    <body>
        Today is: <%=new java.util.Date()%>
        <h1>Entered username and password is incorrect<br/>please try again</h1>
        <jsp:forward page="login.jsp"></jsp:forward>
    </body>
</html>
