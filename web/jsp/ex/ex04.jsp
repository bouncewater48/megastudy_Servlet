<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: A1-19
  Date: 2025-10-30
  Time: 오후 6:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>자료구조 다루기</title>
</head>
<body>

    <%
        // 과일 이름 리스트
        List<String> fruitList = new ArrayList<>();

        fruitList.add("사과");
        fruitList.add("바나나");
        fruitList.add("딸기");
    %>



    <ul>
        <% for(String fruit:fruitList) { %>
        <li><%= fruit %></li>
        <% } %>
        <li>수박</li>
    </ul>


</body>
</html>
