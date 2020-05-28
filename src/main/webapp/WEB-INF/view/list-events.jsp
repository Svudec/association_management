<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 20-May-20
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Popis događanja</title>

    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="navigation">

    <!-- Logout button and Homepage button-->
    <form:form action="${pageContext.request.contextPath}/logout" method="POST">

        <input type="submit" value="Odjavi se" class="logout-button"/>
    </form:form>

    <input type="button" value="Početna stranica" onclick="window.location='/'; return false;"
           class="logout-button">

</div>

<div id="wrapper">
    <div id="header">
        <h2>Aplikacija za studentsku udrugu</h2>
    </div>
</div>

<div id="container">
    <div id="content">

        <%--<input type="button" value="Novo okupljanje" onclick="window.location.href='showFormForAdd'; return false;"
               class="add-button">--%>

        <table>
            <tr>
                <th>Početak</th>
                <th>Naziv</th>
                <th>Vrsta</th>
                <th>Broj sudionika</th>
                <th>Cijena(EUR)</th>
                <th></th>
            </tr>

            <c:forEach var="tempEvent" items="${events}">

                <c:url var="detailsLink" value="/event/details">
                    <c:param name="EventId" value="${tempEvent.id}"/>
                </c:url>

                <%--<c:url var="membersLink" value="/gathering/members">
                    <c:param name="GatheringId" value="${tempBranch.id}"/>
                </c:url>--%>

                <tr>
                    <td>${tempEvent.niceStartDate()}</td>
                    <td>${tempEvent.name}</td>
                    <td>${tempEvent.eventCategory}</td>
                    <td>${tempEvent.capacity}</td>
                    <td>${tempEvent.price}</td>
                    <td>
                        <a href="${detailsLink}">Detalji</a>
                    </td>
                </tr>

            </c:forEach>
        </table>

    </div>
</div>
</body>
</html>
