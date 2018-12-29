<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/13
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="doAdd"  method="post" >
      商品名称：<input type="text" name="name"><br>
      商品价格：<input type="text" name="price"><br>

      商品图片：<input type="file" name="url" id="img"  width="63px" height="62px"><br>
      商品描述：<input type="text" name="des"><br>
        <input type="submit" value="添加">
    </form>
    <form action="url" method="post"  enctype="multipart/form-data">
        <input  type="file" name="file" onchange="imgChange(this)">
        <input type="submit" value="11">
    </form>
    <form action="list">
        <input type="submit" value="取消">
    </form>
<script >
    function imgChange(obj) {
        obj.files[0];
        /*文件读取器*/
        var  reader = new FileReader()
        reader.onload=function (e) {
            var img=document.getElementById("img")
            img.src=e.target.result;
        }
        reader.readAsDataURL(obj.files[0])
    }
</script>
</body>
</html>
