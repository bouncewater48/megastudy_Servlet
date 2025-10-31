<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>메뉴 검색</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>

    <%
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); }};
        list.add(map);
        map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); }};
        list.add(map);
        map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); }};
        list.add(map);
        map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); }};
        list.add(map);
        map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); }};
        list.add(map);
        map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); }};
        list.add(map);
        map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); }};
        list.add(map);

        String menu = request.getParameter("menu");
        String check = request.getParameter("check");

        List<Map<String, Object>> result = new ArrayList<>();

        for (Map<String, Object> store : list) {
                String m = (String) store.get("menu");
                double point = ((Number) store.get("point")).doubleValue();

                if (m.equals(menu)) {
//                    if (check != null && point <= 4.0) {
//                        continue;
                    if (check == null || point > 4.0) {
                        // continue를 쓰는거보다 조건식을 반대로 만들어서 안쓰는게 훨씬 매끄러움!
                        result.add(store);
                    }
//                    result.add(store);
                }
            }
    %>

    <div class="container">
        <h3 class="text-center">검색 결과</h3> <hr>

        <table class="table text-center">
            <thead>
                <tr>
                    <th>메뉴</th>
                    <th>상호</th>
                    <th>별점</th>
                </tr>
            </thead>

            <tbody>
                    <% for(Map<String, Object> store:result ) { %>
                <tr>
                    <td><%= store.get("menu") %></td>
                    <td><%= store.get("name") %></td>
                    <td><%= store.get("point") %></td>
                </tr>
            <% } %>
            </tbody>

        </table>
    </div>

</body>
</html>
