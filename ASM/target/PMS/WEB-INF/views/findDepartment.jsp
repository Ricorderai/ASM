<%@ page import="com.petrichor.pojo.Department" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/12/28
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Department department = new Department();
    List<Department> list = (List) session.getAttribute("departments");
    department = (Department) list.get(0);
%>
<table border="1px" cellspacing="0" cellpadding="0" width="60%" style="margin-top: 100px" align="center">
    <tr>
        <td>公寓门牌号：</td>
        <td><%=department.getRoomId()%></td>
    </tr>
    <tr>
        <td>价格：</td>
        <td><%=department.getPrice()%></td>
    </tr>
    <tr>
        <td>状态：</td>
        <td><%=department.getStatus()%></td>
    </tr>
    <tr>
        <td>人数：</td>
        <td><%=department.getPerson()%></td>
    </tr>
    <tr>
        <td>租客账户：</td>
        <td><%=department.getId()%></td>
    </tr>
</table>
</body>
</html>
