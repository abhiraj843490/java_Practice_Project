<%-- 
    Document   : register
    Created on : 25 Jan, 2022, 12:14:50 AM
    Author     : ABHIRAJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel = "icon" href="./img/logo.jpg"type = "image/x-icon">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
<!--        using CSS        -->

<!--        <style>
            .registercontainer{
                width: 100%;
                height: auto;
                text-align: center;
                background: orange;
            }
        </style>-->
    </head>
    <body>
        <div class="container">
        <div class="jumbotron text-center">
            <form action="register" method="get">
<!--                <label>USER ID</label><br/>
                <input type="text" placeholder="Enter UserID" name="id"><br/>-->
                
                <label class="bg-success">Full Name</label><br/>
                <input type="text" placeholder="Enter FullName" name="fname"><br/>
                
                <label class="bg-success">User Name</label><br/>
                <input type="text" placeholder="Enter UserName" name="uname"><br/>
                
                <label class="bg-success">Email</label><br/>
                <input type="email" placeholder="Enter mail" name="email"><br/>
                
                <label class="bg-success">Password</label><br/>
                <input type="password" placeholder="Enter password" name="psw"><br/>
                <span style="display: none;">Enter minimum 8 character</span>
                
                <label class="bg-success">Confirm Password</label><br/>
                <input type="password" placeholder="confirm your pass" name="cnfpsw"><br/>
                <span style="display: none;">Both the password doesn't match</span>
                
                <input type="submit" value="REGISTER"><br/>
            </form>
        </div>
        </div>
    </body>
</html>
