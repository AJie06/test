<%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2023/4/22
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改我的留言板</title>
    <link rel="stylesheet"type="text/css" href="update.css" >
</head>
<body>

<h1>请修改您的留言与天气</h1>

<form  action="updateDo.jsp">
    <tr><p><label>修改留言:</label></p></tr>
    <tr><input  type="text" name="ud" placeholder="请修改留言"> </tr><br>
    <tr><p><label>修改天气:</label></p></tr>
    <tr><input  type="text" name="" placeholder="请修改天气"> </tr><br><br>

    <tr ><input  class="submit"  type="submit" value="确认修改" style="cursor:pointer;"> </tr><br>

</form>


</body>
</html>
