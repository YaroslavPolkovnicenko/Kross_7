<%@ page import="Data.Amount" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 21091
  Date: 27.12.2018
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Сумма</title>
</head>
<body>
<table class="w3-table-all w3-centered" >

        <%
    ArrayList<Amount> tableamount = (ArrayList<Amount>) request.getAttribute("tableamount");
%>

    <tr>
        <th></th>
        <th>№</th>
        <th>Дата получения средств</th>
        <th>Сумма</th>
        <th>Дата исполнения заказа</th>
    </tr>

        <%
    for (Amount amount: tableamount){
%>

    <tr><td>

        <button class="w3-button w3-white w3-border w3-round-large" title="удалить" onclick="location.href='/deleteamount?del=<%=amount.getNum_order()%>'" ></button>


    </td><td><%=amount.getNum_order()%></td><td><%=amount.getDate_of_receipt()%></td><td><%=amount.getAmount()%></td><td><%=amount.getDate_of_execution()%></td></tr>

        <% }%>

    <div class="w3-container w3-opacity w3-right-align w3-padding">
        <button class="w3=btn w3-round-large" onclick="location.href='/'">Назад</button>
    </div>
</body>
</html>
