<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/12/28
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form method="post" action="findDepartment">
        <div style="text-align: center; margin-top: 75px">
            <input type="text" style="border-radius: 5px; border: 1px rgba(22, 201, 224, 0.5) solid; height: 25px;"
                   name="roomId" placeholder="请输入公寓门牌号来查找公寓" />
            <input type="submit" style="border-radius: 25px; height: 25px;" value="查找">
        </div>
    </form>
</body>
</html>
