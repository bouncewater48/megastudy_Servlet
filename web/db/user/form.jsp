<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>사용자 추가</title>
</head>
<body>

    <h3>사용자 추가</h3>
    <form method="post" action="/db/user/insert">
        <label>이름</label> <input type="text" name="name"> <br>
        <label>생년월일</label> <input type="text" name="birthday"> <br>
        <label>이메일</label> <input type="text" name="email"> <br>
        <label>자기소개</label> <br>
        <textarea rows="10" cols="50" name="introduce"></textarea> <br>
        <button type="submit">추가</button>
    </form>

</body>
</html>
