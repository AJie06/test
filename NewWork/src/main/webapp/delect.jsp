<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2023/4/22
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除</title>
</head>
<body>


<%
    //需要删除的数据的编号
      String delectId =   request.getParameter("delectId");

    //加载数据库驱动

    Class.forName("com.mysql.cj.jdbc.Driver");

    //连接数据库

    Connection coon = DriverManager.getConnection("jdbc:mysql://localhost:3306/mybbs","root","254576");

    //发送SQL

    String sql = "delete from userbbs where userID=?";


    PreparedStatement pst = coon.prepareStatement(sql);

    pst.setString(1,delectId);

    int i=pst.executeUpdate();
    if (i!=0){

        //删除成功
        %>

<script>
    alert("您已经删除成功");
    window.location.href="star.jsp";
</script>

<%

    }else {

    }

    //关闭数据库
    pst.close();
    coon.close();
%>

</body>
</html>
