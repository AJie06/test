<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2023/4/21
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" type="text/css"href="login.css">
</head>
<body>

<h1>用户登录</h1>

<form  action="loginDo.jsp">
    <tr><p><label>Account:</label></p></tr>
    <tr><input  type="text" name="account" placeholder="请输入账号"> </tr><br>
    <tr><p><label>Password:</label></p></tr>
    <tr><input  type="password" name="psd" placeholder="请输入密码"> </tr><br><br>
    <a href="zhuce.jsp">如果没有账号，请注册</a><br><br>

    <tr ><input  class="submit"  type="submit" value="确认登录" style="cursor:pointer;"> </tr><br>

</form>


</body>
</html>
