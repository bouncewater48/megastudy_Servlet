<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>길이 변환 form</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>

    <div class="container">
        <h2>길이 변환</h2>

        <form method="post" action="/jsp/test/test05.jsp">
            <input type="number" name="number">cm
            <br>

            <label>인치</label><input type="checkbox" name="unit" value="inch">
            <label>야드</label><input type="checkbox" name="unit" value="yard">
            <label>피트</label><input type="checkbox" name="unit" value="feet">
            <label>미터</label><input type="checkbox" name="unit" value="meter">
            <br>

            <button type="submit">변환</button>
        </form>

    </div>

</body>
</html>
