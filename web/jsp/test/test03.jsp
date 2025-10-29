<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>현재 날짜 시간</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>

    <%
        Calendar cal = Calendar.getInstance();

        int currentYear = cal.get(Calendar.YEAR);
        int currentMonth = cal.get(Calendar.MONTH)+1;
        int currentDay = cal.get(Calendar.DATE);
        int currentHour = cal.get(Calendar.HOUR_OF_DAY);
        int currentMinute = cal.get(Calendar.MINUTE);
        int currentSecond = cal.get(Calendar.SECOND);
    %>

    <div class="container">
        <div class="date display-2">
            오늘 날짜 <b><%= currentYear %></b>년
            <b><%= currentMonth %>월</b>
            <b><%= currentDay %></b>일
        </div>
        <div class="time display-2">
            현재 시간 <b><%= currentHour %></b>시
            <b><%= currentMinute %></b>분
            <b><%= currentSecond %></b>초
        </div>
    </div>

</body>
</html>
