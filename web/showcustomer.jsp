<%@ page import="Data.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Data.Product" %><%--
  Created by IntelliJ IDEA.
  User: 21091
  Date: 27.12.2018
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Заказчик</title>
</head>
<body>
<div>

<table class="w3-table-all w3-centered" >

    <%
        ArrayList<Customer> tablecustomer = (ArrayList<Customer>) request.getAttribute("tablecustomer");
    %>

    <tr>
        <th></th>
        <th>№</th>
        <th>Фамилия</th>
        <th>Имя</th>
        <th>Отчество</th>
        <th>Адрес</th>
    </tr>

    <%
        for (Customer customer: tablecustomer){
    %>

    <tr><td>

        <button class="w3-button w3-white w3-border w3-round-large" title="удалить" onclick="location.href='/deletecustomer?del=<%=customer.getNum_order()%>'" ></button>


    </td><td><%=customer.getNum_order()%></td><td><%=customer.getFamily()%></td><td><%=customer.getName()%></td><td><%=customer.getSurname()%></td><td><%=customer.getAdress()%></td></tr>

    <% }%>

</table>

</div>

    <div class="w3-container w3-opacity w3-right-align w3-padding">
        <button class="w3=btn w3-round-large" onclick="location.href='/'">Назад</button>
    </div>
</body>
</html>
