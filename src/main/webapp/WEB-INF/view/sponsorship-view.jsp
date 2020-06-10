<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 10-Jun-20
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Sponzorstvo</title>

    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-table-style.css">
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
    <h3>Sponzorstvo</h3>

    <security:authorize access="hasAnyRole('BOARD_MEMBER')">
        <div id="frm">
            <button type="button" onclick="if (confirm('Izbrisat ćeš sponzorstvo!')) return location.href='/sponsorship/delete?projectId=${param.get('projectId')}&partnerId=${param.get('partnerId')}'" class="add-button">Izbriši</button>
        </div>
    </security:authorize>

    <table>
        <tbody>
        <tr>
            <td><label>Partner:</label></td>
            <td><b>${sponsorship.partner.name}</b></td>
        </tr>
        <tr>
            <td><label>Projekt:</label></td>
            <td><b>${sponsorship.project.name}</b></td>
        </tr>
        <tr>
            <td><label>Sponzorski paket:</label></td>
            <td><b>${sponsorship.sponsorPackage.name}</b></td>
        </tr>
        <tr>
            <td><label>Obveze ugovora:</label></td>
            <td><b>${sponsorship.sponsorPackage.items}</b></td>
        </tr>
        <tr>
            <td><label>Iznos:</label></td>
            <td><b>${sponsorship.value}</b></td>
        </tr>
        <tr>
            <td><label>Napomena:</label></td>
            <td><b>${sponsorship.note}</b></td>
        </tr>
        </tbody>
    </table>

</div>
</body>
</html>