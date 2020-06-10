<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 09-Jun-20
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Partner</title>

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
    <h3>Partner</h3>

    <security:authorize access="hasAnyRole('BOARD_MEMBER')">
    <div id="frm">
        <form:form action="edit" modelAttribute="partner" method="get">


            <form:hidden path="id"/>
            <input type="submit" value="Uredi" style="visibility: ${editButton}" class="add-button"/>
        </form:form>

        <form:form action="delete" modelAttribute="partner" method="get">

            <form:hidden path="id"/>
            <input onclick="if (!confirm('Izbrisat ćeš partnera!')) return false" type="submit" value="Izbriši" style="visibility: ${editButton}" class="add-button"/>

        </form:form>
        </security:authorize>
    </div>

    <form:form action="save" modelAttribute="partner" method="post">

        <form:hidden path="id"/>

        <table>
            <tbody>
            <tr>
                <td><label>Naziv:</label></td>
                <td>
                    <form:input disabled="${disabled_edit}" path="name" />
                    <form:errors path="name" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>OIB:</label></td>
                <td>
                    <form:input type="number" disabled="${disabled_edit}" path="oib" />
                    <form:errors path="oib" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>Web adresa:</label></td>
                <td>
                    <form:input disabled="${disabled_edit}" path="webAdress" />
                    <form:errors path="webAdress" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>Mobitel:</label></td>
                <td>
                    <form:input disabled="${disabled_edit}" path="mobile" />
                    <form:errors path="mobile" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>Email adresa:</label></td>
                <td>
                    <form:input disabled="${disabled_edit}" path="mail" />
                    <form:errors path="mail" cssClass="error" />
                </td>
            </tr>

            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Spremi" class="save" style="visibility: ${saveButton}"/></td>
            </tr>
            </tbody>
        </table>
    </form:form>
</div>

<h3 style="${showSponsorships}">Sponzorstva</h3>
<div id="container2" style="${showSponsorships}">
    <div id="content">

        <table>
            <tr>
                <th>Projekt</th>
                <th>Iznos</th>
                <th></th>
            </tr>

            <c:forEach var="temp" items="${sponsorships}">

                <c:url var="sponsorshipLink" value="/sponsorship/details">
                    <c:param name="partnerId" value="${temp.partner.id}"/>
                    <c:param name="projectId" value="${temp.project.id}"/>
                </c:url>

                <tr>
                    <td>${temp.project.name}</td>
                    <td>${temp.value}</td>
                    <td>
                        <a href="${sponsorshipLink}">Detalji</a>
                    </td>
                </tr>

            </c:forEach>
        </table>

    </div>
</div>
</body>
</html>