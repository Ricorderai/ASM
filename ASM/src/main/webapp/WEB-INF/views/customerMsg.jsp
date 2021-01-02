<%@ page import="com.petrichor.pojo.Customer" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/12/26
  Time: 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.* " import ="java.text.* " %>
<html>
<head>
    <title>个人中心</title>
    <%SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");%>
</head>
<body>
    <%
        Customer customer = new Customer();
        List<Customer> list = (List) session.getAttribute("customers");
        customer = (Customer) list.get(0);
    %>
    <div>
        <p align="center" style="height: 20px;">欢迎<%=customer.getName()%>进入个人信息界面，可以选择
            <a href="http://localhost:8080/ASM_war/asm/updateCustomer">编辑信息</a>
        </p>
    </div>
    <div style="margin-top: 20px;">
        <table border="1px" cellspacing="0" cellpadding="0" width="60%" style="margin: 0 auto">
            <tr align="center" style="height: 20px;">
                <td>帐号</td>
                <td><%=customer.getId()%></td>
            </tr>
            <tr align="center" style="height: 20px;">
                <td>密码</td>
                <td><%=customer.getPassword()%></td>
            </tr>
            <tr align="center" style="height: 20px;">
                <td>姓名</td>
                <td><%=customer.getName()%></td>
            </tr>
            <tr align="center" style="height: 20px;">
                <td>性别</td>
                <td><%=customer.getSex()%></td>
            </tr>
            <tr align="center" style="height: 20px;">
                <td>身份证号</td>
                <td><%=customer.getIdNumber()%></td>
            </tr>
            <tr align="center" style="height: 20px;">
                <td>公司单位</td>
                <td><%=customer.getCompany()%></td>
            </tr>
            <tr align="center" style="height: 20px;">
                <td>公寓门牌号</td>
                <td><%=customer.getRoomId()%></td>
            </tr>
            <tr align="center" style="height: 20px;">
                <td>租房日期</td>
                <td><%=format.format(customer.getStartTime())%></td>
            </tr>
            <tr align="center" style="height: 20px;">
                <td>退房日期</td>
                <td><%=format.format(customer.getEndTime())%></td>
            </tr>
            <tr align="center" style="height: 20px;">
                <td>支付状态</td>
                <td><%=customer.getPayStatus()%></td>
            </tr>
        </table>
    </div>
</body>
</html>
