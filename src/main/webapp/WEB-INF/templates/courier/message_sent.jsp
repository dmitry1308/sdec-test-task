<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Оповещение</title>
</head>
<body>

<div align="center" >
    Оповещение в Call-центр отправлено!<br/><br/>
    <br/>
    Номер: ${orderFromServer.number.intValue()} <br/>
    Дата: ${orderFromServer.date}<br/><br/>
    <a href="<c:url value="/"/>">Вернуться в главное меню</a>
</div>
</body>
</html>
