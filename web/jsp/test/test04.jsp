
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>사칙 연산</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>

    <%
        int number1 = Integer.parseInt(request.getParameter("number1"));
        int number2 = Integer.parseInt(request.getParameter("number2"));
        String operation = request.getParameter("operation");

        double result = 0;

        switch (operation) {
            case "+": result = number1 + number2; break;
            case "-": result = number1 - number2; break;
            case "X": result = number1 * number2; break;
            case "/": result = number1 / number2; break;
        }
    %>

    <div class="container">
        <h3>계산 결과</h3>
        <b><div class=display-4><%= number1 %> <%= operation %> <%= number2 %></b> = <span class="text-info"><%= result %></span></div>
    </div>
</body>
</html>
