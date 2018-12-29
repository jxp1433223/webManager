<%@ page import="java.util.List" %>
<%@ page import="com.neuedu.pojo.Product" %>
<%@ page import="com.neuedu.pojo.Spgl" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/12/12
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
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
</head>
<!--start-main-->
<div class="banner" id="home">
    <div class="header-top">
        <div class="container">
            <div class="logo">
                <a><h1>品牌页面</h1></a>
            </div>
            <div class="search">
                <form>
                    <input type="submit" value="">
                    <input type="text" value="Search " onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}">
                </form>
            </div>
            <!--top-nav-->
            <span class="menu"> </span>
            <div class="top-menu">
                <nav>
                    <ul class="cl-effect-16">
                        <li><a class="active scroll" href="list" data-hover="Home">Home</a></li>
                        <li><a class="scroll" href="addsp" data-hover="增加">增加</a></li>
                        <%-- <li><a class="scroll" href="#xiugai" data-hover="修改">修改</a></li>
                         <li><a class="scroll" href="delete?productId=${p.productId}" data-hover="删除">删除</a></li>--%>
                        <li><a class="scroll" href="splist" data-hover="品牌管理">品牌管理</a></li>
                        <li><a class="scroll" href="#gallery" data-hover="权限管理">权限管理</a></li>
                        <li><a class="scroll" href="xiugai" data-hover="修改密码">修改密码</a></li>
                    </ul>
                </nav>
            </div>
            <!--script-for-menu-->
            <script>
                $( "span.menu" ).click(function() {
                    $( ".top-menu" ).slideToggle( "slow", function() {
                        // Animation complete.
                    });
                });
            </script>
            <!--//script-for-menu-->
            <div class="clearfix"></div>
        </div>
    </div>
</div>

</div>
<style>
    table{
        border: 1px #000 solid;
        border-collapse: collapse;
    }
    table thead tr th ,table tbody tr td{
        border: 1px #000 solid;
        padding: 5px 10px;
    }
    table tbody tr:nth-child(odd){
        background-color: antiquewhite;
    }
</style>
<body>
<table class="table table-striped">
    <thead>
    <tr>
        <th>品牌编号</th>
        <th>品牌名称</th>
        <th>商品详情</th>
        <th>商品数量</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${liste}" var="s">
        <tr>
            <td>${s.spId}</td>
            <td>${s.spName}</td>
            <td>${s.spDes}</td>
            <td>${s.spCount}</td>
            <td><a href="deletesp?spId=${s.spId}">删除|</a><a id="xiugai" href="spupdate?spId=${s.spId}">修改</a></td>
        </tr>
    </c:forEach>

    </tbody>
</table>
</body>
</html>
