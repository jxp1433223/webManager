<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/28 0028
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="doSpUpdate">
    <input type="text" hidden="hidden" name="id" value="${s.spId}">
    商品名称：<input type="text" name="name" value="${s.spName}" ></br>
    商品描述：<input type="text" name="des" value="${s.spDes}"></br>
    商品图片：<input type="text" name="count" value="${p.spCount}"></br>
    <input type="submit" value="确认修改">
</form>
<form action="splist">
    <input type="submit" value="取消">
</form>
</body>
</html>
