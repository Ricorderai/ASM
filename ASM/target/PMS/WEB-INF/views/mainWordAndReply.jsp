<%@ page import="com.petrichor.pojo.Reply" %>
<%@ page import="java.util.List" %>
<%@ page import="com.petrichor.pojo.Word" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/12/29
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.* " import ="java.text.* "%>
<html>
<head>
    <title>Title</title>
    <% Date date = new Date(); SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");%>
</head>
<body>
    <div style="text-align: center">
        <h2>留言板信息</h2>
    </div>
    <%
        List<Reply> replyList = (List<Reply>) session.getAttribute("reply");
        List<Word> wordList = (List<Word>) session.getAttribute("word");
        Reply reply = new Reply();
        Word word = new Word();
        if(wordList != null && replyList != null) {
            for (int i = 0; i < wordList.size(); i++) {
                word = wordList.get(i);
                reply = replyList.get(i);
    %>
    <div style="margin-top: 20px">
        <div style="width: 50%">
            <p><%=i%>&nbsp;&nbsp;&nbsp;用户账号<%=word.getWriterId()%>&nbsp;留言时间：<%=format.format(date)%></p>
            <p>留言信息：<%=word.getWriterContent()%></p>
        </div>
        <div style="width: 50%; margin-left: 50px;">
            <p>管理员账号<%=reply.getReplyId()%>&nbsp;回复时间：<%=format.format(date)%></p>
            <p>回复信息：<%=reply.getReplyContent()%></p>
        </div>
        <div style="color: red; background-color: beige">
            ———————————————————————————分割线—————————————————————————
        </div>
    </div>
    <%
        }
    %>
    <div>
        <%
        }
        
        %>
    </div>
</body>
</html>
