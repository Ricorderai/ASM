<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/12/29
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言板</title>
    <frameset border="1px" cols="25%, 75%">
        <frameset border="1px" rows="50%, 50%">
            <frame name="word" src="http://localhost:8080/ASM_war/asm/word">
            <frame name="reply" src="http://localhost:8080/ASM_war/asm/reply">
        </frameset>
        <frame name="mainWordAndReply" src="http://localhost:8080/ASM_war/asm/mainWordAndReply">
    </frameset>
</head>
<body>

</body>
</html>
