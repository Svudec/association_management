<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 20-May-20
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Računi</title>

    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="navigation">

    <div class="my-menu">
        <!-- Logout button and Homepage button-->
        <form:form action="${pageContext.request.contextPath}/logout" method="POST">

            <input type="submit" value="Odjavi se" class="logout-button my-menu-button"/>
        </form:form>

        <input type="button" value="Početna stranica" onclick="window.location='/'; return false;"
               class="logout-button my-menu-button">
    </div>

</div>

<div id="wrapper">
    <div id="header">
        <h2>Aplikacija za studentsku udrugu</h2>
    </div>
</div>

<div id="container">
    <div>
        <h3>Trenutno stanje računa: ${accountValue}</h3>
    </div>
    <div id="content">

        <input type="button" value="Napravi račun" onclick="window.location.href='showFormForAdd'; return false;"
               class="add-button">

        <table>
            <tr>
                <th>Vrijeme</th>
                <th>Vrsta</th>
                <th>Iznos</th>
                <th>Opis</th>
            </tr>

            <c:forEach var="tempReceipt" items="${receipts}">

                <tr>
                    <td>${tempReceipt.niceTime()}</td>
                    <td>
                        <c:choose>
                        <c:when test="${tempReceipt.type.toString().equals('PRIHOD')}">+</c:when>
                        <c:otherwise>-</c:otherwise>
                        </c:choose>
                    </td>
                    <td>${receiptValues.get(tempReceipt.id)}</td>
                    <td>${tempReceipt.description}</td>
                </tr>

            </c:forEach>
        </table>

    </div>
</div>
</body>
</html>