<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 20-May-20
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Popis okupljanja</title>

    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="navigation">

    <!-- Logout button -->
    <form:form action="${pageContext.request.contextPath}/logout" method="POST">

        <input type="submit" value="Odjavi se" class="logout-button"/>
    </form:form>

</div>

<div id="wrapper">
    <div id="header">
        <h2>Aplikacija za studentsku udrugu</h2>
    </div>
</div>

<div id="container">
    <div id="content">

        <input type="button" value="Novo okupljanje" onclick="window.location.href='showFormForAdd'; return false;"
               class="add-button">

        <table>
            <tr>
                <th>Naziv</th>
                <th>Datum</th>
                <th>Broj članova</th>
                <th></th>
            </tr>

            <c:forEach var="tempGathering" items="${gatherings}">

                <c:url var="detailsLink" value="/gathering/details">
                    <c:param name="GatheringId" value="${tempGathering.id}"/>
                </c:url>

                <c:url var="membersLink" value="/gathering/members">
                    <c:param name="GatheringId" value="${tempGathering.id}"/>
                </c:url>

                <tr>
                    <td>${tempGathering.name}</td>
                    <td>${tempGathering.startTime}</td>
                    <td>${gatheringService.getMembersNumber(tempGathering.id)}</td>
                    <td>
                        <a href="${detailsLink}">Detalji</a> | <a href="${membersLink}">Sudionici</a>
                    </td>
                </tr>

            </c:forEach>
        </table>

    </div>
</div>
</body>
</html>
