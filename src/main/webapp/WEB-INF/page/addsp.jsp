<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/26 0026
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="doAddSp">
    商品编号：<input type="text" name="id"><br>
    商品名称：<input type="text" name="name"><br>
    商品描述：<input type="text" name="des"><br>
    商品数量：<input type="text" name="count"><br>
    <input type="submit" value="添加">
</form>
<form action="splist">
    <input type="submit" value="取消">
</form>
</body>
</html>