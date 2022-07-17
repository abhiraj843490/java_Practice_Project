<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>forget_password</title>
        <link rel = "icon" href="./img/logo.jpg"type = "image/x-icon">
    </head>
    <body>
    <center>
        <form action="forget_password" method="get">
        <h1>Reset Password</h1>
        <p>Please Enter your Student ID/Name</p>
        <input type="text" name="id" placeholder="Student ID/Name/Email"/></br></br>
        <button type="submit">submit</button>
        </form>
        <p>Message: ${pass}</p>
    </center>
    </body>
</html>
