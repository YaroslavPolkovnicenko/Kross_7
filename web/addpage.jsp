<%--
  Created by IntelliJ IDEA.
  User: 21091
  Date: 27.12.2018
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Добавление заказчика</title>
</head>
<body>
<h3>Добавить заказчика</h3>

<form method="post">

    <label>Введите номер заказчика <input type="text" name="num"></label><br />
    <label>Введите фамилию заказчика: <input type="text" name="family"></label> <br />
    <label>Введите имя заказчика: <input type="text" name="name"></label> <br />
    <label>Введите отчество заказчика: <input type="text" name="surname"></label> <br />
    <label>Введите адресс заказчика: <input type="text" name="adress"></label> <br />

    <input type="submit" value="Добавить">

</form>

<div class="w3-container w3-opacity w3-right-align w3-padding">

    <button class="w3=btn w3-round-large" onclick="location.href='/'">Назад</button>

</div>
</body>
</html>
