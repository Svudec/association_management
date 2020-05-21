<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 20-May-20
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Računi</title>

    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<div id="wrapper">
    <div id="header">
        <h2>Aplikacija za studentsku udrugu</h2>
    </div>
</div>

<div id="container">
    <div id="content">

        <input type="button" value="Napravi račun" onclick="window.location.href='showFormForAdd'; return false;"
               class="add-button">

        <b>Trenutno stanje računa: ${receiptService.getAccountValue()}</b>

        <table>
            <tr>
                <th>Vrsta</th>
                <th>Iznos</th>
                <th>Vrijeme</th>
                <th></th>
            </tr>

            <c:forEach var="tempReceipt" items="${receipts}">

                <tr>
                    <td>${tempReceipt.type}</td>
                    <td>${tempReceipt.value}</td>
                    <td>${tempReceipt.time.toLocaleString()}</td>
                </tr>

            </c:forEach>
        </table>

    </div>
</div>
</body>
</html>