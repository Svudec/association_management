<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 19-May-20
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Popis timova</title>

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

        <security:authorize access="hasAnyRole('BOARD_MEMBER', 'ADMIN')">
            <input type="button" value="Napravi tim" onclick="window.location.href='showFormForAdd'; return false;"
               class="add-button">
        </security:authorize>

        <input type="button" value="Početna stranica" onclick="window.location='/'; return false;"
               class="add-button">

        <table>
            <tr>
                <th>Naziv</th>
                <th>Voditelj</th>
                <th>Broj članova</th>
                <th></th>
            </tr>

            <c:forEach var="tempTeam" items="${teams}">

                <c:url var="detailsLink" value="/team/details">
                    <c:param name="TeamId" value="${tempTeam.id}"/>
                </c:url>

                <c:url var="membersLink" value="/team/members">
                    <c:param name="TeamId" value="${tempTeam.id}"/>
                </c:url>

                <tr>
                    <td>${tempTeam.name}</td>
                    <td>${tempTeam.leader.getFullName()}</td>
                    <td>${teamService.getNumberOfMembers(tempTeam.id)}</td>
                    <td>
                        <a href="${detailsLink}">Detalji</a> <security:authorize access="hasAnyRole('BOARD_MEMBER', 'ADMIN')">| <a href="${membersLink}">Članovi</a></security:authorize>
                    </td>
                </tr>

            </c:forEach>
        </table>

    </div>
</div>
</body>
</html>