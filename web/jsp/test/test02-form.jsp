<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>체격 조건 입력</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>

    <div class="container">
        <h2>체격 조건 입력</h2>

        <form method="get" action="/jsp/test/test02.jsp">
            <div class="d-flex align-items-end" >
                <input type="text" class="form-control" name="height" style="width:150px"><div class="ml-1">cm</div>
                <input type="text" class="form-control" name="weight" style="width:150px"><div class="ml-1">kg</div>
                <button type="submit" class="btn btn-info ml-3">계산</button>
            </div>
        </form>
    </div>

</body>
</html>
