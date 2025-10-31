<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>메뉴 검색 결과</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>

    <form method="get" action="/jsp/test/test07.jsp">
        <h3>메뉴 검색</h3>
        <input type="text" name="menu">
        <input type="checkbox" name="check">4점 이하 제외 <br>
        <button type="submit" class="text-bg-success border">검색</button>
    </form>

</body>
</html>
