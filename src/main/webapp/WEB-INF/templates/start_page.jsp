<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Выбор интерфейса</title>
</head>
<body>
<div align="center">
    <h1>Главное меню</h1>

    <form method="get" action="/courier/send_message">
        Сервис для курьера<br/>
        <input type="submit" value="Выбрать" name="Ok"><br><br>
    </form>
    <br/><br/>
    <form method="get" action="/operator/all_orders">
        Сервис для оператора Call-центра<br/>
        <input type="submit" value="Выбрать" name="Ok">
    </form>
</div>
</body>
</html>
