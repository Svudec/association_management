<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 09-Jun-20
  Time: 23:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Novo sponzorstvo</title>

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
    <h3>Novo sponzorstvo</h3>

    <form:form method="post" action="/sponsorship/new" modelAttribute="sponsorshipDTO">
        <table>
            <tbody>
            <tr>
                <td><label>Partner:</label></td>
                <td><label>
                    <form:select path="partnerId" items="${partners}" itemLabel="name" itemValue="id"/>
                </label>
                </td>
            </tr>
            <tr>
                <td><label>Projekt:</label></td>
                <td><label>
                    <form:select path="projectId" items="${projects}" itemLabel="name" itemValue="id"/>
                </label>
                </td>
            </tr>
            <tr>
                <td><label>Sponzorski paket:</label></td>
                <td><label>
                    <form:select path="sponsorPackageId" items="${packages}" itemLabel="name" itemValue="id"/>
                </label>
                </td>
            </tr>
            <tr>
                <td><label>Iznos sponzorstva:</label></td>
                <td><label>
                    <form:input path="value" type="number" step="0.01"/>
                    <form:errors path="value" cssClass="error" />
                </label>
                </td>
            </tr>
            <tr>
                <td><label>Napomena:</label></td>
                <td><label>
                    <form:textarea path="note" rows="6" cols="50"/>
                    <form:errors path="note" cssClass="error" />
                </label>
                </td>
            </tr>

            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Spremi" class="save"></td>
            </tr>
            </tbody>
        </table>
    </form:form>
</div>
</body>
</html>