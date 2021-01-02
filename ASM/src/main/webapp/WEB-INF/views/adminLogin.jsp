<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/12/28
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
</head>
<body>
    <div style="display: block; visibility: visible; opacity: 1; margin-left: 40%; padding-top: 10%;">
        <form action="adminHome" method="post" >
            <p style="margin-left: 5%;">管理员密码登录</p>
            <p><input type="text" name="account" autocomplete="off" value="" placeholder="用户名" required="required" /></p>
            <p><input type="password" name="password" autocomplete="off" value="" placeholder="密码" required="required" /></p>
            <p style="margin-left: 8%;"><input type="submit" value="登录"/></p>
        </form>
    </div>
</body>
</html>
