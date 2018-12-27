<%--
  Created by IntelliJ IDEA.
  User: 21091
  Date: 27.12.2018
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Добавление суммы</title>
</head>
<body>
<h3>Добавить сумму</h3>

<form method="post">

    <label>Введите номер суммы <input type="text" name="num"></label><br />
    <label>Введите дату заказа: <input type="text" name="date_of_receipt"></label> <br />
    <label>Введите сумму: <input type="text" name="amount"></label> <br />
    <label>Введите дату выполнения заказа: <input type="text" name="date_of_execution"></label> <br />

    <input type="submit" value="Добавить">

</form>

<div class="w3-container w3-opacity w3-right-align w3-padding">

    <button class="w3=btn w3-round-large" onclick="location.href='/'">Назад</button>

</div>

</body>
</html>
