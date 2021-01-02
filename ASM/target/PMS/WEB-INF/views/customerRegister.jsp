<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/12/24
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>顾客注册</title>
    <script type="text/javascript">
        const result = <%=session.getAttribute("result")%>
        $(function () {
            if ((result)) {
                if ((result) == '1') {
                    alert("注册成功！");
                } else {
                    alert("未知错误，重新注册");
                }
            } else {
                alert("");
            }
        })
    </script>
</head>
<body>
    <div style="display: block; visibility: visible; opacity: 1; margin-left: 40%; padding-top: 5%;">
        <form action="register" method="post">
            <p style="margin-left: 7%;">注册账号</p>
            <p><input type="text" name="id" autocomplete="off" value="" placeholder="用户名" required="required" /></p>
            <p><input type="password" name="password" autocomplete="off" value="" placeholder="密码" required="required" /></p>
            <p><input type="text" name="name" autocomplete="off" value="" placeholder="姓名" required="required" /></p>
            <p><input type="text" name="sex" autocomplete="off" value="" placeholder="性别" required="required" /></p>
            <p><input type="text" name="idNumber" autocomplete="off" value="" placeholder="身份证号" required="required" /></p>
            <p><input type="text" name="company" autocomplete="off" value="" placeholder="公司住址" required="required" /></p>
            <p style="margin-left: 8%;"><input type="submit" value="注册" onclick=""/></p>
        </form>
    </div>
</body>
</html>
