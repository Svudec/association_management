<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 21-May-20
  Time: 03:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Novi projekt</title>

    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-table-style.css">
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
    <h3>Novi projekt</h3>

    <input type="button" value="Početna stranica" onclick="window.location='/'; return false;"
           class="add-button">

    <form:form action="save" modelAttribute="project" method="post">

        <form:hidden path="id"/>

        <table>
            <tbody>
            <tr>
                <td><label>Naziv:</label></td>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <td><label>Opis:</label></td>
                <td><form:input path="description" /></td>
            </tr>
            <tr>
                <td><label>Početak:</label></td>
                <td><form:input type="date" path="startDate" /></td>
            </tr>
            <tr>
                <td><label>Završetak:</label></td>
                <td><form:input type="date" path="endDate" /></td>
            </tr>

            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Spremi" class="save"/></td>
            </tr>
            </tbody>
        </table>
    </form:form>
</div>
</body>
</html>
