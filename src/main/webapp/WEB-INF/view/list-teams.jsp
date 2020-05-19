<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 19-May-20
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Popis timova</title>

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

        <input type="button" value="Napravi tim" onclick="window.location.href='showFormForAdd'; return false;"
               class="add-button">

        <table>
            <tr>
                <th>Naziv</th>
                <th>Voditelj</th>
                <th>Broj članova</th>
                <th></th>
            </tr>

            <c:forEach var="tempTeam" items="${teams}">

                <c:url var="detailsLink" value="/tim/details">
                    <c:param name="timId" value="${tempTeam.id}"/>
                </c:url>

                <tr>
                    <td>${tempTeam.name}</td>
                    <td>${tempTeam.leader.getFullName()}</td>
                    <td>${teamService.getNumberOfMembers(tempTeam.id)}</td>
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