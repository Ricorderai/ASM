<%@ page import="com.petrichor.pojo.Department" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/12/28
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="text-align: center; margin-top: 50px;">
    <table align="center">
        <tr align="center" bgcolor="#a9a9a9">
            <td height="15px">公寓门牌号</td>
            <td height="15px">价格</td>
            <td height="15px">状态</td>
            <td height="15px">人数</td>
            <td height="15px">租客账户</td>
            <td height="15px">转去编辑</td>
        </tr>
        <%
            Department department = new Department();
            List<Department> customerList = (List)session.getAttribute("departments");
            for (int i = 0; i < customerList.size(); i++) {
                department = customerList.get(i);

        %>
        <tr align="center" bgcolor="#fffaf0">
            <td height="15px"><%=department.getRoomId()%></td>
            <td height="15px"><%=department.getPrice()%></td>
            <td height="15px"><%=department.getStatus()%></td>
            <td height="15px"><%=department.getPerson()%></td>
            <td height="15px"><%=department.getId()%></td>
            <td height="15px">
                <a href="http://localhost:8080/ASM_war/asm/toUpdateDepartmentSecond/<%=department.getRoomId()%>">
                    编辑
                </a>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</div>
</body>
</html>
