<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2023/4/21
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet"type="text/css"href="zhuce.css">
</head>
<body>
<div id="jichu">
  <h1>如果没有账号，请注册</h1>
  <form  action="zhuceDo.jsp">
    <tr><p><label>Account:</label></p></tr>
    <tr><input  type="text" name="account" placeholder="请输入账号"> </tr><br>
    <tr><p><label>Password:</label></p></tr>
    <tr><input  type="password" name="psd" placeholder="请输入密码"> </tr><br>
    <tr><p><label>Username:</label></p></tr>
    <tr><input  type="text" name="Username" placeholder="请输入用户名"> </tr><br><br>

    <tr ><input  class="submit"  type="submit" value="确认注册" style="cursor:pointer;"> </tr><br>

  </form>
</div>

</body>
</html>
