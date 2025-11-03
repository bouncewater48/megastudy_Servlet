<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>IPTV</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="style" href="style.css">
</head>
<body>

        <%
            List<Map<String, String>> list = new ArrayList<>();
            Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); }};
            list.add(map);
            map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); }};
            list.add(map);
            map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); }};
            list.add(map);
            map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); }};
            list.add(map);
            map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); }};
            list.add(map);
            map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); }};
            list.add(map);
            map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); }};
            list.add(map);
            map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); }};
            list.add(map);
            map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); }};
            list.add(map);
            map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); }};
            list.add(map);
            map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); }};
            list.add(map);
            map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); }};
            list.add(map);
            map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); }};
            list.add(map);
            map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); }};
            list.add(map);
            map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); }};
            list.add(map);
            map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); }};
            list.add(map);

            String select = request.getParameter("category");
            if (select == null || select.isEmpty()) {
                select = "전체";
            }
        %>

     <div id="wrap" class="container">
        <h2 class="header text-center text-danger font-weight-bolder">Sk broadband IPTV</h2>
         <nav class="main-menu d-flex nav nav-tabs bg-danger text-light">
            <div class="nav-item ">
                <a class="nav-link <%= select.equals("전체") ? "active" : "" %>" href="?category=전체">전체</a>
            </div>
             <div class="nav-item">
                <a class="nav-link <%= select.equals("지상파") ? "active" : "" %>" href="?category=지상파">지상파</a>
            </div>
             <div class="nav-item">
                <a class="nav-link <%= select.equals("드라마") ? "active" : "" %>" href="?category=드라마">드라마</a>
            </div>
             <div class="nav-item">
                <a class="nav-link <%= select.equals("예능") ? "active" : "" %>" href="?category=예능">예능</a>
            </div>
             <div class="nav-item">
                <a class="nav-link <%= select.equals("영화") ? "active" : "" %>" href="?category=영화">영화</a>
            </div>
             <div class="nav-item">
                <a class="nav-link <%= select.equals("스포츠") ? "active" : "" %>" href="?category=스포츠">스포츠</a>
            </div>
         </nav>

         <div class="contents">
             <div class="d-flex text-center border-bottom contents-head">
                <div class="col-2 fw-bold">채널</div>
                <div class="col-7 fw-bold">채널명</div>
                <div class="col-3 fw-bold">카테고리</div>
             </div>

             <% for (Map<String, String> channel:list ) {
                 String category = channel.get("category");%>

             <div class="d-flex text-center border-bottom">
                <div class="col-2"><%= channel.get("ch") %></div>
                <div class="col-7"><%= channel.get("name") %></div>
                <div class="col-3"><%= channel.get("category") %></div>
             </div>
             <% } %>
         </div>

         <div class="footer text-center">Copyright 2025. skb All Rights Reserved</div>

     </div>

</body>
</html>
