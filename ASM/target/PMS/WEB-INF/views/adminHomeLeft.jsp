<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/12/28
  Time: 12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    &nbsp;&nbsp;&nbsp;&nbsp;目录
    <ul>
        <li>系统管理
            <ul>
                <li>管理员信息</li>
                <li>顾客管理
                    <ul>
                        <li><a href="http://localhost:8080/ASM_war/asm/adminToFindCustomer" target="right">查找顾客</a></li>
                        <li><a href="http://localhost:8080/ASM_war/asm/adminToUpdateCustomerFirst" target="right">修改顾客</a></li>
                        <li><a href="http://localhost:8080/ASM_war/asm/toDeleteCustomer" target="right">删除顾客</a></li>
                    </ul>
                </li>
                <li>公寓管理
                    <ul>
                        <li><a href="http://localhost:8080/ASM_war/asm/toFindDepartment" target="right">查找公寓</a></li>
                        <li><a href="http://localhost:8080/ASM_war/asm/toUpdateDepartmentFirst" target="right">修改公寓</a></li>
                    </ul>
                </li>
                <li>留言板管理
                    <ul>
                        <li><a href="http://localhost:8080/ASM_war/asm/wordAndReply" target="right">查看留言信息</a></li>
                        <li><a href="http://localhost:8080/ASM_war/asm/wordAndReply" target="right">回复留言信息</a></li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>
</div>
</body>
</html>
