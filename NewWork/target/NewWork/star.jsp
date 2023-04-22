<%@ page import="java.sql.*" %>
<%@ page import="com.sun.xml.internal.bind.v2.model.core.ID" %><%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2023/4/22
  Time: 12:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎来到我的留言板</title>
    <link rel="stylesheet" type="text/css" href="star.css">
</head>
<body>

        <h1>欢迎来到我的留言板管理页面：</h1>

<%


    //加载数据库驱动

    Class.forName("com.mysql.cj.jdbc.Driver");

    //连接数据库

    Connection coon = DriverManager.getConnection("jdbc:mysql://localhost:3306/mybbs","root","254576");

    //发送SQL




    String sql = "select * from userBBS";

    PreparedStatement pst = coon.prepareStatement(sql);


   ResultSet  rs = pst.executeQuery();//执行

    %>
        <table>

            <tr>
                <td>ID</td>
                <td>用户名</td>
                <td>天气</td>
                <td>留言内容</td>
                <td>操作</td>
            </tr>

        <%

    while (rs.next()){
       String id = rs.getString(1);
       String username = rs.getString(2);
       String usertext = rs.getString(3);
       String time =  rs.getString(4);

       %>


    <tr>
        <td><%=id%></td>
        <td><%=username%></td>
        <td><%=usertext%></td>
        <td><%=time%></td>
        <td><a href="javascript:void (0)" onclick="delcet(<%=id%>)">删除</a>&nbsp&nbsp<a href="update.jsp">修改</a></td>
    </tr>


<%


    }
    %>


        <%

    //关闭数据库
    rs.close();
    pst.close();
    coon.close();


%>

            <script>
                function delcet(id){
                  if (window.confirm("确认要删除这条留言吗？")) {
                      window.location.href="delect.jsp?delectId="+id;
                  }
                }
            </script>

            <a href="bbs.jsp">点击返回留言界面</a><br>
            <a href="login.jsp">退出登录</a>

</body>
</html>
