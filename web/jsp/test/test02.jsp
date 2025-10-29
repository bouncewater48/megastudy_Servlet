<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>form 태그</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>

    <%
        String weightParameter = request.getParameter("weight");
        String heightParameter = request.getParameter("height");

        double height = Double.parseDouble(heightParameter);
        double weight = Double.parseDouble(weightParameter);

        double BMI = weight / ((height / 100.0) * (height / 100.0));

        String result = BMIMethod(BMI);
    %>

    <%!
        public String BMIMethod (double BMI){
            String result;
            if(BMI < 18.5) {
                result = "저체중";
            } else if(BMI < 25) {
                result = "정상";
            } else if(BMI < 30) {
                result = "과체중";
            } else {
                result = "비만";
            }
            return result;
        }
    %>

    <div class="container">
        <h1>BMI 측정 결과</h1>
        <div class="display-4">당신은 <span class="text-info"><%= result %></span>입니다.</div>
        <div>BMI 수치 : <%= BMI %></div>
    </div>

</body>
</html>
