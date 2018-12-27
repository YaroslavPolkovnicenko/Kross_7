<%--
  Created by IntelliJ IDEA.
  User: 21091
  Date: 27.12.2018
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Добавление товара</title>
</head>
<body>
<h3>Добавить товар</h3>

<form method="post">

    <label>Введите номер товара <input type="text" name="num"></label><br />
    <label>Введите наименование товара: <input type="text" name="title"></label> <br />
    <label>Введите стоиомсть товара: <input type="text" name="price"></label> <br />
    <label>Введите дату заказа: <input type="text" name="delivery_date"></label> <br />

    <input type="submit" value="Добавить">

</form>

<div class="w3-container w3-opacity w3-right-align w3-padding">

    <button class="w3=btn w3-round-large" onclick="location.href='/'">Назад</button>

</div>
</body>
</html>