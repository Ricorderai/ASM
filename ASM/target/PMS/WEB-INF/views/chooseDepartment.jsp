<%@ page import="com.petrichor.pojo.Department" %>
<%@ page import="java.util.List" %>
<%@ page import="com.petrichor.pojo.Customer" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/12/26
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>公寓出租界面</title>
</head>
<body>
    <form action="orderDeal" method="post">
        <%
            Department department = new Department();
            Customer customer = new Customer();
            List<Department> list = (List<Department>) session.getAttribute("departments");
            List<Customer> customerList = (List<Customer>) session.getAttribute("customers");
            department = (Department) list.get(0);
            customer = (Customer) customerList.get(0);
            
        %>
        <div>
            <p align="center" style="height: 20px;">欢迎<%=department.getId()%>进入订单提交界面，请确认订单并提交
            </p>
        </div>
        <div style="margin-top: 20px;">
            <table border="1px" cellspacing="0" cellpadding="0" width="60%" style="margin: 0 auto">
                <tr align="center" style="height: 20px;">
                    <td>公寓门牌号</td>
                    <td><input name="roomId" value="<%=department.getRoomId()%>" /></td>
                </tr>
                <tr align="center" style="height: 20px;">
                    <td>价格</td>
                    <td><%=department.getPrice()%></td>
                </tr>
                <tr align="center" style="height: 20px;">
                    <td>人数</td>
                    <td><%=department.getPerson()%></td>
                </tr>
                <tr align="center" style="height: 20px;">
                    <td>状态</td>
                    <td><%=department.getStatus()%></td>
                </tr>
                <tr align="center" style="height: 20px;">
                    <td>预订用户</td>
                    <td><input name="id" value="<%=customer.getId()%>" /></td>
                </tr>
                <tr align="center" style="height: 20px;">
                    <td>租房日期</td>
                    <td><input type="date" name="startTime" /></td>
                </tr>
                <tr align="center" style="height: 20px;">
                    <td>退房日期</td>
                    <td><input type="date" name="endTime" /></td>
                </tr>
                <tr align="center" style="height: 20px;">
                    <td>支付状态</td>
                    <td>未支付</td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="确 定" size="12" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="清 空" size="12" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
