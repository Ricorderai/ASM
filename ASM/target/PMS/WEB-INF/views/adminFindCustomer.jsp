<%@ page import="com.petrichor.pojo.Customer" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/12/28
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Customer customer = new Customer();
        List<Customer> customerList = (List) session.getAttribute("customer");
        customer = (Customer)customerList.get(0);
    %>
    <table border="1px" cellspacing="0" cellpadding="0" width="60%" style="margin-top: 100px" align="center">
        <tr>
            <td>账号：</td>
            <td><%=customer.getId()%></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><%=customer.getPassword()%></td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td><%=customer.getName()%></td>
        </tr>
        <tr>
            <td>性别：</td>
            <td><%=customer.getSex()%></td>
        </tr>
        <tr>
            <td>身份证号：</td>
            <td><%=customer.getIdNumber()%></td>
        </tr>
        <tr>
            <td>公司单位：</td>
            <td><%=customer.getCompany()%></td>
        </tr>
        <tr>
            <td>公寓门牌号：</td>
            <td><%=customer.getRoomId()%></td>
        </tr>
        <tr>
            <td>租房日期：</td>
            <td><%=customer.getStartTime()%></td>
        </tr>
        <tr>
            <td>退房日期：</td>
            <td><%=customer.getEndTime()%></td>
        </tr>
        <tr>
            <td>支付状态：</td>
            <td><%=customer.getPayStatus()%></td>
        </tr>
    </table>
</body>
</html>
