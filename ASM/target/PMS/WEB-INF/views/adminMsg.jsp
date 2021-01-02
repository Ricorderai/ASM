<%@ page import="com.petrichor.pojo.Admin" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/12/28
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Admin admin = new Admin();
        List<Admin> list = (List) session.getAttribute("admin");
        admin = (Admin) list.get(0);
    %>
    <div style="text-align: center;margin-top: 50px;">
        <h3>管理员信息</h3>
        <table align="center" style="border-top: 0px; border-left: 0px; border-right: 0px; border-bottom: 1px aqua solid;">
            <tr >
                <td>账户：</td>
                <td><%=admin.getAccount()%></td>
            </tr>
        </table>
        <table align="center" style="border-top: 0px; border-left: 0px; border-right: 0px; border-bottom: 1px aqua solid;">
            <tr >
                <td>密码：</td>
                <td><%=admin.getPassword()%></td>
            </tr>
        </table>
        <table align="center" style="border-top: 0px; border-left: 0px; border-right: 0px; border-bottom: 1px aqua solid;">
            <tr >
                <td>权限：</td>
                <td><%=admin.getRemarks()%></td>
            </tr>
        </table>
    </div>

</body>
</html>
