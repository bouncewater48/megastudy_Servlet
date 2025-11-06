<%@ page import="com.bouncewater.common.MysqlService" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>즐겨찾기 목록</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<%
    MysqlService mysqlService = MysqlService.getInstance();

    mysqlService.connect();

    List<Map<String, Object>> favoriteList = mysqlService.select("SELECT * FROM `favoriteList` ORDER BY `id`;");

    mysqlService.disconnect();
%>

    <div class="container">
        <table class="table text-center">
            <thead>
                <tr>
                    <th>사이트</th>
                    <th>사이트 주소</th>
                    <th>삭제</th>
                </tr>
            </thead>

            <tbody>
                <% for(Map<String, Object> favorite:favoriteList) { %>
                    <tr>
                        <td><%= favorite.get("name") %></td>
                        <td><a href="<%= favorite.get("url") %>"></a><%= favorite.get("url") %></td>
                        <td><a href="#" class="btn btn-danger btn-sm">삭제</a></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>

</body>
</html>
