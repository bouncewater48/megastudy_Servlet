<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>종합문제1</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
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

        List<String> categories = new ArrayList<>();
        categories.add("전체");
        categories.add("지상파");
        categories.add("드라마");
        categories.add("예능");
        categories.add("영화");
        categories.add("스포츠");

    %>

    <!-- header -->
    <div id="wrap" class="container">
        <h2 class="text-center text-danger">Sk broadband IPTV</h2>
            <ul class="nav nav-tabs">
                <%  for(String cate : categories) { %>
                    <li class="nav-item">
                        <a class="#"></a>
                    </li>
                <% } %>
            </ul>

        <div class="table-container">
            <table class="table align-middle">
                <thead>
                    <tr>
                        <th>채널</th>
                        <th>채널명</th>
                        <th>카테고리</th>
                    </tr>
                </thead>

                <tbody>
                    <% for (Map<String, String> channel:list ) {
                        String category = channel.get("category");
                        if (select.equals("전체") || select.equals(category)) { %>
                    <tr>
                        <td class="text-center"><%= channel.get("ch") %></td>
                        <td><%= channel.get("name") %></td>
                        <td class="text-center"><%= category %></td>
                    </tr>
                <%     }
                    }   %>
                </tbody>

            </table>
        </div>
        <p class="text-center">Copyright 2025. skb All Rights Reserved</p>
    </div>

</body>
</html>
