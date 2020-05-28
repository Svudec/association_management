<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 20-May-20
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Forma za okupljanje</title>

    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-table-style.css">
</head>
<body>

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
    <h3>Forma za okupljanje</h3>

    <form:form action="edit" modelAttribute="gathering" method="get">

        <security:authorize access="hasAnyRole('BOARD_MEMBER')">
        <form:hidden path="id"/>
        <input type="submit" value="Uredi" style="visibility: ${editButton}" class="add-button"/>

        </security:authorize>

    </form:form>

    <form:form action="save" modelAttribute="gathering" method="post">

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
                <td><label>Opis:</label></td>
                <td>
                    <form:input disabled="${disabled_edit}" path="description" />
                    <form:errors path="description" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>Početak:</label></td>
                <td>
                    <form:input disabled="${disabled_edit}" type="datetime-local" path="startTime" />
                    <form:errors path="startTime" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>Završetak:</label></td>
                <td>
                    <form:input disabled="${disabled_edit}" type="datetime-local" path="endTime" />
                    <form:errors path="endTime" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>Formalno:</label></td>
                <td>
                    <form:checkbox disabled="${disabled_edit}" path="formal" />
                    <form:errors path="formal" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>Tim:</label></td>
                <td><form:select disabled="${disabled_edit}" path="teamId" >
                    <form:option value="0">--------</form:option>
                    <c:forEach var="tempTeam" items="${teams}">
                        <form:option value="${tempTeam.id}">${tempTeam.name}</form:option>
                    </c:forEach>
                </form:select>

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
</body>
</html>
