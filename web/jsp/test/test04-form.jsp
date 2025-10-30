<%--
  Created by IntelliJ IDEA.
  User: A1-19
  Date: 2025-10-30
  Time: 오후 5:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>사칙 연산 입력</title>
</head>
<body>

    <form method="post" action="/jsp/test/test04.jsp">
        <input type="number" class="form-control" name="number1">

        <select name="operation">
            <option>+</option>
            <option>-</option>
            <option>X</option>
            <option>/</option>
        </select>

        <input type="number" class="form-control" name="number2">
        <button type="submit">계산</button>

    </form>

</body>
</html>
