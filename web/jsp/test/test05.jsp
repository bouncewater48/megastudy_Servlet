<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>길이 변환</title>
</head>
<body>

<%
    int cm = Integer.parseInt(request.getParameter("cm"));

    // inch, feet, yard, meter
    String[] unitArray = request.getParameterValues("unit");

//        String result = "";
    StringBuilder sb = new StringBuilder();
    for(int i = 0; i < unitArray.length; i++) {
        String unit = unitArray[i];

        if(unit.equals("inch")) {
            double inch = cm * 0.39;
            sb.append(inch + "in<br>");
        } else if(unit.equals("feet")) {
            double feet = cm * 0.032808399;
            sb.append(feet + "ft<br>");
        } else if(unit.equals("yard")) {
            double yard = cm * 0.010936133;
            sb.append(yard + "yd<br>");
        } else if(unit.equals("meter")) {
            double meter = cm / 100.0;
            sb.append(meter + "m<br>");
        }
    }
%>
<div class="container">
    <h2>변환 결과</h2>

    <h3>349cm</h3>
    <hr>
    <h3>
        <%= sb %>
    </h3>
</div>

</body>
</html>
