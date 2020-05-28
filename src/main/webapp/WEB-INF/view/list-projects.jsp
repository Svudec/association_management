<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 21-May-20
  Time: 03:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Projekti</title>

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

<security:authorize access="hasAnyRole('BOARD_MEMBER')">
        <input type="button" value="Novi projekt" onclick="window.location.href='showFormForAdd'; return false;"
               class="add-button">
</security:authorize>

        <table>
            <tr>
                <th>Datum</th>
                <th>Naziv</th>
                <th>Broj sudionika</th>
                <th>Broj sponzorstava</th>
                <th>Zarada</th>
                <th></th>
            </tr>

            <c:forEach var="tempProject" items="${projects}">

                <c:url var="detailsLink" value="/project/details">
                    <c:param name="ProjectId" value="${tempProject.id}"/>
                </c:url>

                <tr>
                    <td>${tempProject.niceStartDate()}</td>
                    <td>${tempProject.name}</td>
                    <td>${projectService.getParticipantsNumber(tempProject.id)}</td>
                    <td>${projectService.getProjectSponsorshipsNumber(tempProject.id)}</td>
                    <td>${receiptValues.get(tempProject.id)}</td>
                    <td>

                        <security:authorize access="hasAnyRole('BOARD_MEMBER')">
                            <a href="${detailsLink}">Detalji</a>
                        </security:authorize>
                    </td>
                </tr>

            </c:forEach>
        </table>

    </div>
</div>
</body>
</html>
