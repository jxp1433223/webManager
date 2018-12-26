<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/12/12
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Home</title>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Theme files -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <!--Google Fonts-->

</head>
<body>
<div class="login">
    <h2>Acced Form</h2>
    <div class="login-top">
        <h1>LOGIN FORM</h1>
        <form action="dologin" method="post">
            <input type="text" name="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'username';}">
            <input type="password" name="pwd" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}">
        <div class="forgot">
            <a href="forgot">forgot Password</a>
            <input type="submit" value="Login" >
        </div>
        </form>
    </div>
    <div class="login-bottom">
        <h3>New User &nbsp;<a href="register">Register</a>&nbsp Here</h3>
    </div>
</div>

</body>
</html>
