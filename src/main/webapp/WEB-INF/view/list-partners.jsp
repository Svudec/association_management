<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 08-Jun-20
  Time: 23:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Partneri</title>

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

        <security:authorize access="hasAnyRole('BOARD_MEMBER')">
            <input type="button" value="Novi partner" onclick="window.location.href='showFormForAdd'; return false;"
                   class="add-button">
        </security:authorize>

        <table>
            <tr>
                <th>Naziv</th>
                <th>Email adresa</th>
                <th>Kontakt</th>
                <th>Ukupno donirano</th>
                <th></th>
            </tr>

            <c:forEach var="tempPartner" items="${partners}">

                <c:url var="detailsLink" value="/partner/details">
                    <c:param name="id" value="${tempPartner.id}"/>
                </c:url>

                <tr>
                    <td>${tempPartner.name}</td>
                    <td>${tempPartner.mail}</td>
                    <td>${tempPartner.mobile}</td>
                    <td>${partnerService.getSponsorshipsValue(tempPartner.id)}</td>
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