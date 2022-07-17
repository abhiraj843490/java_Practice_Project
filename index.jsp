<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="design.css">
        <title>Rental</title>
        <link rel = "icon" href="./img/logo.jpg"type = "image/x-icon">
        
        <style>
            .container{
                width: 100%;
                height: 60px;
                background:#66ccff;
            }
            li{
                float: left;
                text-decoration: none;
                list-style: none;
            }
            li a{
                padding: 10px;
                text-decoration: none;
                color: blueviolet;
            }
        </style>
    </head>
    <body>
        <%
            //String name=(String) session.getAttribute("username");
            if(session.getAttribute("username")==null){
        %>
        <div class="container">
            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">product</a></li>
                    <li><a href="#">Contact</a></li>
                    <li style="float: left;"><a href="About.jsp">About</a></li>
                    <li style="float: right;"><a href="login.jsp">login</a></li>
                    <li style="float: right;"><a href="register.jsp">Register</a></li>
                </ul>
            </nav>
        </div>
        <%} else if(session.getAttribute("username")!=null){
%>
        <div class="container">
            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">product</a></li>
                    <li><a href="#">Contact</a></li>
                    <li><a href="#">About</a></li>
                    <li style="float: right;"><%session.getAttribute("un");%></li>  <!--i want to write out side of container-->
                    <li style="float: right;"><a href="logout.jsp">Log Out</a></li>
                </ul>
            </nav>
        </div>
        
        <%}
        %>
    </body>
</html>
