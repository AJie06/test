<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2023/4/22
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎来留言</title>
    <link rel="stylesheet" type="text/css" href="bbs.css">
</head>
<body>

<h1>欢迎来到我的留言板</h1>
<form  action="bbsDo.jsp">
    <tr><p><label>Username:</label></p></tr>
    <tr><input  type="text" name="account" placeholder="请输入用户名"> </tr><br>
    <tr><p><label>message:</label></p></tr>
    <tr><input  type="text" name="psd" placeholder="请输入留言"> </tr><br>
    <tr><p><label>Weather:</label></p></tr>
    <tr><input  type="text" name="Username" placeholder="请输入您的天气"> </tr><br><br>

    <tr ><input  class="submit"  type="submit" value="确认留言" style="cursor:pointer;"> </tr><br><br><br>



</form>

</body>
</html>
