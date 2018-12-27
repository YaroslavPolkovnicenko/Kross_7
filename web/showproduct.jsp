<%@ page import="Data.Product" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 21091
  Date: 27.12.2018
  Time: 19:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Товар</title>
</head>
<body>

<table class="w3-table-all w3-centered" >

<%
    ArrayList<Product> tableproduct = (ArrayList<Product>) request.getAttribute("tableproduct");
%>

<tr>
    <th></th>
    <th>№</th>
    <th>наименование</th>
    <th>Стоимость</th>
    <th>Дата заказа</th>
</tr>

<%
    for (Product product: tableproduct){
%>

<tr><td>

    <button class="w3-button w3-white w3-border w3-round-large" title="удалить" onclick="location.href='/deleteproduct?del=<%=product.getNum_order()%>'" ></button>


</td><td><%=product.getNum_order()%></td><td><%=product.getTitle()%></td><td><%=product.getPrice()%></td><td><%=product.getDelivery_date()%></td></tr>

<% }%>

<div class="w3-container w3-opacity w3-right-align w3-padding">
    <button class="w3=btn w3-round-large" onclick="location.href='/'">Назад</button>
</div>

</table>
</body>
</html>
