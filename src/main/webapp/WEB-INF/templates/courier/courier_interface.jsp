<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Интерфейс курьера</title>
</head>
<body>

<spring:form modelAttribute="orderFromServer" method="POST" action="/courier/result">
    <h1> Введите номер заказа в цифрах</h1>
    <br/>
    Номер заказа <spring:input path="number"/>
    <spring:button>Не успеваю</spring:button>
</spring:form>
</body>
</html>