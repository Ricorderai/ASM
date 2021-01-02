<%@ page import="com.petrichor.pojo.Department" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/12/28
  Time: 16:06
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
    List<Department> customerList = (List) session.getAttribute("department");
    department = (Department) customerList.get(0);
%>
<form method="post" action="updateDepartment">
    <table border="1px" cellspacing="0" cellpadding="0" width="60%" style="margin-top: 100px" align="center">
        <tr>
            <td>公寓门牌号：</td>
            <td><input name="roomId" value="<%=department.getRoomId()%>" /></td>
        </tr>
        <tr>
            <td>价格：</td>
            <td><input name="price" value="<%=department.getPrice()%>" /></td>
        </tr>
        <tr>
            <td>状态：</td>
            <td><input name="status" value="<%=department.getStatus()%>" /></td>
        </tr>
        <tr>
            <td>人数：</td>
            <td><input name="person" value="<%=department.getPerson()%>"></td>
        </tr>
        <tr>
            <td>租客账户：</td>
            <td><input name="id" value="<%=department.getId()%>"></td>
        </tr>
    </table>
    <div style="text-align: center; margin-top: 25px;">
        <input type="submit" style="border-radius: 25px;height: 25px" value="完成">
    </div>
</form>
</body>
</html>
