<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: 86188
  Date: 2023/4/22
  Time: 17:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理登录界面</title>
</head>
<body>

<%
      //接受来自login.jsp的值

      String account=request.getParameter("account");
      String Pwd=request.getParameter("psd");
      //对数据库中的数据进行查找

      //加载数据库驱动

     Class.forName("com.mysql.cj.jdbc.Driver");

      //连接数据库

      Connection coon = DriverManager.getConnection("jdbc:mysql://localhost:3306/mybbs","root","254576");

      //发送SQL

      String sql = "select * from user where UserCode=? ";


      PreparedStatement pst = coon.prepareStatement(sql);

      pst.setString(1,account);

      ResultSet  rs = pst.executeQuery();//执行

      if (rs.next()){

        //找到对应账户

         String userPwd =   rs.getString("UserPwd");
         if(userPwd.equals(Pwd)){

           //密码正确，登录成功

           out.print("登录成功！");
%>

<script>
    window.setTimeout(function (){
    window.location.href="bbs.jsp";

  },1000)


</script>


<%

         }else {
           //密码错误
           out.print("密码错误");
%>

<script>
    window.setTimeout(function (){
    window.location.href="login.jsp";

  },1000)


</script>


<%

         }


      }else {

        //用户名输入错误
           out.print("用户名输入错误！");
%>

<script>
      window.setTimeout(function (){
      window.location.href="login.jsp";

  },1000)


</script>


<%


      }



%>

</body>
</html>
