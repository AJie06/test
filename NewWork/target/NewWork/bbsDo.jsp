<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2023/4/22
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言处理界面</title>
</head>
<body>

<%
    //获取注册页面的数据
    String UserAccount = request.getParameter("account");
    String UserPwd = request.getParameter("psd");
    String UserName = request.getParameter("Username");

    //将上面的信息写入数据库

    //加载数据库驱动

    Class.forName("com.mysql.cj.jdbc.Driver");

    //连接数据库

    Connection coon = DriverManager.getConnection("jdbc:mysql://localhost:3306/mybbs","root","254576");

    //发送SQL

    String sql = "insert into userbbs(userww,userdd,useroo)value(?,?,?)";


    PreparedStatement pst = coon.prepareStatement(sql);
    pst.setString(1,UserAccount);
    pst.setString(2,UserPwd);
    pst.setString(3,UserName);
    int i = pst.executeUpdate();

    if (i>0){
        //留言成功，提醒用户注册成功并跳转到登录界面
%>
<script>

    window.setTimeout(function(){
        window.location.href = "bbs-ok.jsp";
    },3000)

</script>
<%
}else {
    //留言失败，体系用户注册失败并跳转到注册界面
%>
<script>
    window.setTimeout(function (){
        window.location.href = "bbs.jsp";

    },3000)
</script>
<%

    }

    //关闭数据库
    pst.close();
    coon.close();
%>


</body>
</html>
