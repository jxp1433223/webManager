<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/12/12
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Day Spa Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom Theme files -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/swipebox.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
    <script src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script src="js/modernizr.custom.97074.js"></script>
    <!--/script-->
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
            });
        });
    </script>
    <script src="js/jquery.swipebox.min.js"></script>
    <script type="text/javascript">
        jQuery(function($) {
            $(".swipebox").swipebox();
        });
    </script>
    <!-- Add fancyBox main JS and CSS files -->
    <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
    <link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
    <script>
        $(document).ready(function() {
            $('.popup-with-zoom-anim').magnificPopup({
                type: 'inline',
                fixedContentPos: false,
                fixedBgPos: true,
                overflowY: 'auto',
                closeBtnInside: true,
                preloader: false,
                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });
        });
    </script>
    <style>
        #tupian{
            width: 440px;
            height: 320px;
            margin-left: 700px;
            margin-top: 100px;
        }
        #tuixhu{
            margin-top: -88.5px;
            margin-left: 200px;
        }
        .contact .container .col-md-6  #fo{
            font-size: 15px;
            color: silver;
            position: absolute;
            margin-left: 440px;
            margin-top: -53px;
        }
        .contact .container .col-md-6{
            margin-top: 60px;
        }
    </style>
</head>
<body>
<div id="contact" class="contact">
    <div class="container">
        <h3 class="tittle">登陆</h3>
        <div class="col-md-6 box">
            <!--contact-form-->
            <form action="dologin" method="post">
                <p class="your-para">用户名 :</p><span id="message"></span>
                <input type="text" name="username" placeholder="账号" >
                <p class="your-para">密码 :</p>
                <input type="password" name="pwd" placeholder="密码">
                <input type="submit" value="登陆">
            </form>
            <form action="register" method="post" id="tuixhu">
                <input type="submit" value="注册">
            </form>
            <a  id="fo" href="forgot">找回密码</a>
        </div>
        <div id="tupian">
            <img src="images/u=3038705115,3265351627&fm=26&gp=0.jpg">
        </div>
    </div>
</div>


</body>
</html>