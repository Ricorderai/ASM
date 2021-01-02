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
    <title>顾客登录界面</title>
    <script language="JavaScript">
        const result = <%=session.getAttribute("result")%>
            $(function () {
                if ((result)) {
                    if ((result) == 1) {
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
    <div style="display: block; visibility: visible; opacity: 1; margin-left: 40%; padding-top: 10%;">
        <form action="customerHome" method="post" >
            <p style="margin-left: 5%;">用户名密码登录</p>
            <p><input type="text" name="id" autocomplete="off" value="" placeholder="用户名" required="required" /></p>
            <p><input type="password" name="password" autocomplete="off" value="" placeholder="密码" required="required" /></p>
            <p style="margin-left: 8%;"><input type="submit" value="登录"/></p>
            <a href="http://localhost:8080/ASM_war/asm/customerRegister" style="margin-left: 9%;">注册</a>
        </form>
    </div>
</body>
</html>
