<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/12/12
  Time: 13:37
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
        #message{
            display: inline-block;
        }
        .your-para{
            display: inline-block;
        }
    </style>
</head>
<body>
<div id="contact" class="contact">
    <div class="container">
        <h3 class="tittle">注册</h3>
        <div class="col-md-6 box">
            <!--contact-form-->
            <form action="doregister" method="post">
                <p class="your-para">用户名 :</p><span id="message"></span>
                <input type="text" name="username" id="uname" class="AC">
                <p class="your-para">密码 :</p>
                <input type="password" name="pwd" value="password" id="pwd">
                <p class="your-para">确认密码 :</p><span id="pmes"></span>
                <input type="password" name="pwds" class="AC" id="pwds">
                <p class="your-para">电话 :</p>
                <input type="text" name="tele" id="tele" class="AC">
                <div id="quertion">你的姓名是？</div>
                <input type="text" name="answer" value = 'answer' id="answer" class="AC">
                <input type="submit" value="确认">
            </form>
            <form action="login" method="post" id="tuixhu">
                <input type="submit" value="退出">
            </form>
        </div>
        <div id="tupian">
            <img src="images/u=3038705115,3265351627&fm=26&gp=0.jpg">
        </div>
    </div>
</div>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script>
            $(function () {
                /*使用ajax*/
                var un ;
                var pwd;
                var pwds;
                var tele;
                var  answer
                $(".AC").blur(function () {
                    un = $("#uname").val();
                    pwd = $("#pwd").val();
                    pwds = $("#pwds").val();
                    tele = $("#tele").val();
                    answer=$("#answer").val();
                    $.ajax({
                        data:{"uname":un,"pwd":pwd,"pwds":pwd,"tele":tele},
                        success:function(result){
                            console.log(result);
                            if(result == "4"){
                                $("#message").text("✔");
                            }
                            if (result == "43"){
                                $("#message").text("✔");
                                $("#pmes").text("✔");
                                $("#btn").attr("disabled",false);
                            }
                            if (result == 1){
                                $("#message").text("用户已存在");
                            }
                            if(result == "42"){
                                $("#pmes").text("密码不一致");
                            }
                        }
                    })
                });
                $("#btn").click(function () {
                    $.ajax({
                        url:"doIt",
                        type:"post",
                        data:{"uname":un,"pwd":pwd,"pwds":pwd,"tele":tele},
                        success:function (data) {
                            if (data > 0){
                                alert("注册成功")
                                window.location.href="http://localhost:8080/ajaxTest/login"
                            }
                        }
                    });
                });
            });

        </script>
<div >

</div>

</body>
</html>