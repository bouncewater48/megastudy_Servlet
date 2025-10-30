<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>길이 변환</title>
</head>
<body>

    <%
        String cm = String.valueOf(Integer.parseInt(request.getParameter("cm")));
        double number = Double.parseDouble(request.getParameter("number"));

        double result = 0;
        String[] unitArray = request.getParameterValues("unit");
        String label = "";


        for(int i = 0; i < unitArray.length; i++) {
            String unit = unitArray[i];

            if(unit.equals("inch")) {
                double inch = cm * 0.39;
                result += Double.parseDouble(inch + "in");
            } else if (unit.equals("feet")){
                double feet = cm * 0.032808399;
                result += Double.parseDouble(feet + "ft");
            } else if (unit.equals("yard")){
                double yard = cm * 0.010936133;
                result += Double.parseDouble(yard + "yd");
            } else if (unit.equals("meter")) {
                double meter = cm / 100.0;
                result += Double.parseDouble(meter + "m")
            }

        }
    %>

    <div class="container">
        <h3>변환 결과</h3> <br>
        <%= number %>cm <hr>


    </div>

</body>
</html>
