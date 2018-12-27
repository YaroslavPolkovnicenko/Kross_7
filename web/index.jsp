<%--
  Created by IntelliJ IDEA.
  User: 21091
  Date: 27.12.2018
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Главная</title>
  </head>
  <body>

  <div>
    <h1>Выберите действие </h1>
  </div>

  <div class="w3-container w3-center">
    <div class="w3-bar w3-padding-large">
      <button class="w3-round-large" onclick="location.href='/customer'">Показать таблицу "Заказчик"</button>
      <button class="w3-round-large" onclick="location.href='/product'">Показать таблицу "Товар"</button>
      <button class="w3-round-large" onclick="location.href='/amount'">Показать таблицу "Сумма"</button>
      <button class="w3-round-large" onclick="location.href='/addcustomer'">Добавить заказчика</button>
      <button class="w3-round-large" onclick="location.href='/addproduct'">Добавить товар</button>
      <button class="w3-round-large" onclick="location.href='/addamount'">Добавить сумму</button>
    </div>

  </div>
  </body>
</html>
