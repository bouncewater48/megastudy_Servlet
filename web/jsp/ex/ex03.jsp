<%--
  Created by IntelliJ IDEA.
  User: A1-19
  Date: 2025-10-30
  Time: 오후 4:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>Post Method</title>
</head>
<body>

    <%
        // 닉네임 전달 받기
        String nickname = request.getParameter("nickname");

        // 좋아하는 동물을 하나 전달 받기
        // 고양이, 강아지, 호랑이
        String animal = request.getParameter("animal");

        // 좋아하는 과일 하나를 전달 받기
        // 바나나, 딸기, 복숭아
        String fruit = request.getParameter("fruit");

        // 좋아하는 음식을 모두 전달 받기
        // 민트초코, 하와이안피자, 번데기
        String[] foodArray = request.getParameterValues("food");

        String foodString = "";
        for (int i = 0; i < foodArray.length; i++) {
            foodString += foodArray[i] + " ";
        }
    %>

    <h3><%= nickname %></h3>
    <h3><%= animal %></h3>
    <h3><%= fruit %></h3>
    <h3><%= foodString %></h3>


</body>
</html>
