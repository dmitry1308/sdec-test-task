<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Оповещение</title>
</head>
<body>

<div align="center">
    <br/>
    Заказ номер: ${orderDelete.number.intValue()} удален из списка. <br/>

    <a href="<c:url value="/"/>">Вернуться в главное меню</a>
    <br/>
    <a href="<c:url value="/operator/all_orders"/>">Вернуться к списку заказов </a>
</div>
</body>
</html>
