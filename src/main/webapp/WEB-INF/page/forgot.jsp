<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/25 0025
  Time: 9:00
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
        <h3 class="tittle">找回密码</h3>
        <div class="col-md-6 box">
            <!--contact-form-->
            <form action="doforgot" method="post">
                <p class="your-para">用户名 :</p><span id="message"></span>
                <input type="text" name="username" placeholder="账号" >
                <p class="your-para">你的姓名是 :</p>
                <input type="password" name="answer" placeholder="answer">
                <input type="submit" value="确定">
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
                data:{"uname":un,"pwd":pwd,"pwds":pwd,"tele":tele ,"answer":answer},
                success:function(result){
                    if(result == "1"){
                        alert("请输入答案");
                    }
                    if (result == "2"){
                       alert("答案正确")
                    }
                    if (result == "3"){
                        alert("答案错误")
                    }
                }
            })
        });
        $("#btn").click(function () {
            $.ajax({
                url:"doIt",
                type:"post",
                data:{"uname":un,"pwd":pwd,"pwds":pwd,"tele":tele,"answer":answer},
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

</body>
</html>