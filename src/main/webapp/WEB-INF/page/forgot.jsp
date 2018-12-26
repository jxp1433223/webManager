<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/22 0022
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <style>
        #quertion{
            font-size: 23px;
            color: red;
        }
        .zhuce{
            height: 40px;
            width: 200px;
            border-radius: 50px;
            margin-left: 65px;
            background: indianred;
            display: inline-block;
            text-align: center;
            line-height: 40px;
            font-size: 20px;
        }
    </style>
</head>
<body>
<div class="login">
    <h2>Acced Form</h2>
    <div class="login-top">
        <h1>REGISTER</h1>
        <form action="doforgot" method="post">
            <input type="text" name="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'username';}">
            <div id="quertion">你最喜欢的人是？</div>
            <input type="text" name="answer" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'answer';}">
            <input type="submit" value="confirm"class="zhuce">
        </form>
        <form action="login" method="post">
            <input type="submit" value="exit"class="zhuce">
        </form>
    </div>
    <div class="login-bottom">
    </div>
</div>
</body>
</html>
