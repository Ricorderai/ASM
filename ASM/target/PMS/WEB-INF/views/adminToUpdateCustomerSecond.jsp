<%@ page import="com.petrichor.pojo.Customer" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/12/28
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.* " import ="java.text.* " %>
<html>
<head>
    <title>Title</title>
    <%SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");%>
</head>
<body>
    <div style="text-align: center">
        <h2 style="color: red">编辑顾客</h2>
    </div>
    <%
        Customer customer = new Customer();
        List<Customer> customerList = (List) session.getAttribute("customer");
        customer = (Customer)customerList.get(0);
    %>
    <form method="post" action="adminUpdateCustomer">
        <table border="1px" cellspacing="0" cellpadding="0" width="60%" style="margin-top: 100px" align="center">
            <tr>
                <td>账号：</td>
                <td><input name="id" value="<%=customer.getId()%>" /></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input name="password" value="<%=customer.getPassword()%>" /></td>
            </tr>
            <tr>
                <td>姓名：</td>
                <td><input name="name" value="<%=customer.getName()%>" /></td>
            </tr>
            <tr>
                <td>性别：</td>
                <td><input name="sex" value="<%=customer.getSex()%>"></td>
            </tr>
            <tr>
                <td>身份证号：</td>
                <td><input name="idNumber" value="<%=customer.getIdNumber()%>"></td>
            </tr>
            <tr>
                <td>公司单位：</td>
                <td><input name="company" value="<%=customer.getCompany()%>"></td>
            </tr>
            <tr>
                <td>公寓门牌号：</td>
                <td><input name="roomId" value="<%=customer.getRoomId()%>"></td>
            </tr>
            <tr>
                <td>租房日期：</td>
                <td><input name="startTime" value="<%=dateFormat.format(customer.getStartTime())%>"></td>
            </tr>
            <tr>
                <td>退房日期：</td>
                <td><input name="endTime" value="<%=dateFormat.format(customer.getEndTime())%>"></td>
            </tr>
            <tr>
                <td>支付状态：</td>
                <td><input name="payStatus" value="<%=customer.getPayStatus()%>"></td>
            </tr>
        </table>
        <div style="text-align: center; margin-top: 25px;">
            <input type="submit" style="border-radius: 25px;height: 25px" value="完成">
        </div>
    </form>
</body>
</html>
