<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/25 0025
  Time: 11:27
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
            margin-top: 10px;
        }
        #tuixhu{
            margin-top: -88.5px;
            margin-left: 200px;
        }
    </style>
</head>
<body>
<div id="contact" class="contact">
    <div class="container">
        <h3 class="tittle">修改密码</h3>
        <div class="col-md-6 box">
            <!--contact-form-->
            <form method="post" action="doxiugai">
                <p class="your-para">旧密码 :</p>
                <input type="password" value="" >
                <p class="your-para">新密码 :</p>
                <input type="password" value="" >
                <p class="your-para">确认密码 :</p>
                <input type="password" value="">
                <ul class="actions">
                    <li><input type="submit" class="style1" value="确认" /></li>
                   <%-- <li><input type="submit" class="style2" value="退出" /></li>--%>
                </ul>
            </form>
            <form action="splist" method="post" id="tuixhu">
                <input type="submit" value="取消">
            </form>
     </div>
        <div id="tupian">
        <img src="images/u=3038705115,3265351627&fm=26&gp=0.jpg">
        </div>
    </div>
</div>
<div >

</div>

</body>
</html>
