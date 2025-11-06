<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>입력하기</title>
</head>
<body>

    <h1>즐겨찾기 추가</h1>
    <form method="post" action="/db/favorite/insert">
            <label>사이트명:</label> <br>
            <input type="text" name="name"><br>
            <label>사이트 주소:</label> <br>
            <input type="url" name="address"> <br>
            <button type="submit">추가</button>
    </form>

</body>
</html>
