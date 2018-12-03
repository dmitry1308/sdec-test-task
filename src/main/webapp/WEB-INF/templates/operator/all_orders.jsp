<%@ page import="ru.schepin.sdec.model.Order" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Оповещение</title>
</head>
<body>
<div align="center">
    <h1>Список отложенных заказов</h1> <br/>

    <table border="1">
        <caption>Заказы</caption>
        <tr>
            <th>Номер заказа</th>
            <th>Дата</th>
            <th>Время</th>
        </tr>
        <%
            List<Order> orders = (List<Order>) request.getAttribute("order");
            for (Order order : orders) {
        %>
        <tr>
            <td><%=order.getNumber()%></td>
            <td><%=order.getDate()%></td>
            <td><%=order.getTime()%></td>
        </tr>
        <%
            }
        %>
    </table>

    <a href="<c:url value="/"/>">Вернуться в главное меню</a><br/>
</div>

Удаление заказа:
<spring:form modelAttribute="orderDelete" method="POST" action="/operator/delete">
    <h3> Введите номер заказа в цифрах</h3>
    Номер заказа <spring:input path="number"/>
    <spring:button>Удалить</spring:button>
</spring:form>
</body>
</html>
