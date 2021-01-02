<%@ page import="com.petrichor.pojo.Customer" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/12/28
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.* " import ="java.text.* " %>
<html>
<head>
    <title>Title</title>
    <%SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");%>
</head>
<body>
    <div style="text-align: center; margin-top: 50px;">
        <table align="center">
            <tr align="center" bgcolor="#a9a9a9">
                <td height="15px">账号</td>
                <td height="15px">密码</td>
                <td height="15px">姓名</td>
                <td height="15px">性别</td>
                <td height="15px">身份证号</td>
                <td height="15px">公司单位</td>
                <td height="15px">公寓门牌号</td>
                <td height="15px">起租日期</td>
                <td height="15px">退租日期</td>
                <td height="15px">支付状态</td>
                <td height="15px">转去编辑</td>
            </tr>
            <%
                Customer customer = new Customer();
                List<Customer> customerList = (List)session.getAttribute("customerList");
                for (int i = 0; i < customerList.size(); i++) {
                    customer = customerList.get(i);
                    
                    %>
            <tr align="center" bgcolor="#fffaf0">
                <td height="15px"><%=customer.getId()%></td>
                <td height="15px"><%=customer.getPassword()%></td>
                <td height="15px"><%=customer.getName()%></td>
                <td height="15px"><%=customer.getSex()%></td>
                <td height="15px"><%=customer.getIdNumber()%></td>
                <td height="15px"><%=customer.getCompany()%></td>
                <td height="15px"><%=customer.getRoomId()%></td>
                <td height="15px"><%=dateFormat.format(customer.getStartTime())%></td>
                <td height="15px"><%=dateFormat.format(customer.getEndTime())%></td>
                <td height="15px"><%=customer.getPayStatus()%></td>
                <td height="15px">
                    <a href="http://localhost:8080/ASM_war/asm/adminToUpdateCustomerSecond/<%=customer.getId()%>">
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
