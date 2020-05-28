<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 20-May-20
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Popis okupljanja</title>

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
    <div id="content">

<security:authorize access="hasAnyRole('BOARD_MEMBER', 'ADMIN')">

        <input type="button" value="Novo okupljanje" onclick="window.location.href='showFormForAdd'; return false;"
               class="add-button">
</security:authorize>

        <table>
            <tr>
                <th>Vrijeme</th>
                <th>Naziv</th>
                <th>Broj članova</th>
                <th>Troškovi</th>
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
                    <td>${tempGathering.niceStartDate()}</td>
                    <td>${tempGathering.name}</td>
                    <td>${gatheringService.getMembersNumber(tempGathering.id)}</td>
                    <td>${receiptValues.get(tempGathering.id)}</td>
                    <td>
                        <a href="${detailsLink}">Detalji</a> <security:authorize access="hasAnyRole('BOARD_MEMBER', 'ADMIN')">| <a href="${membersLink}">Sudionici</a></security:authorize>
                    </td>
                </tr>

            </c:forEach>
        </table>

    </div>
</div>
</body>
</html>
