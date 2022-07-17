
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel = "icon" href="./img/logo.jpg"type = "image/x-icon">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <form action="login" method="get">
        <div class="container">
            <center>
                <div style="background-image: url(./img/images.jpg)" class="img-rounded">
                    
<!--            <div class="jumbotron text-center">-->
                <h1>LOGIN</h1>
                <p style="color: blueviolet">Please login with your<br/>
                Username & Password<br/><br/></p>
                <input type="text" placeholder="Username" name="uname"><br/><br/>
                <input type="password" placeholder="Password" name="pass"><br/><br/>
                <input type="submit" value="LOGIN"><br/>
                <a href="forget_password.jsp" target="_blank">forget password</a><br>
<!--            </div>-->
        </div>
            </center>
                </div>
        </form>
    </body>
</html>
