<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 06-Jun-20
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Novi internacionalni događaj</title>

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
    <h3>Novi internacionalni događaj</h3>

    <form:form action="create" modelAttribute="event" method="post">

        <table>
            <tbody>
            <tr>
                <td><label>Naziv:</label></td>
                <td>
                    <form:input path="name" />
                    <form:errors path="name" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>Opis:</label></td>
                <td>
                    <form:textarea rows="6" cols="50" path="description" />
                    <form:errors path="description" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>Početak:</label></td>
                <td>
                    <form:input type="date" path="startDate" />
                    <form:errors path="startDate" cssClass="error" />
                </td>
            </tr>
            <tr>
            <tr>
                <td><label>Završetak:</label></td>
                <td>
                    <form:input type="date" path="endDate" />
                    <form:errors path="endDate" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>Ukupan broj sudionika:</label></td>
                <td>
                    <form:input type="number" path="capacity" />
                    <form:errors path="capacity" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>Cijena sudjelovanja:</label></td>
                <td>
                    <form:input type="number" step="0.01" path="price" />
                    <form:errors path="price" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>Organizatori:</label></td>
                <td>
                    <form:select path="organizers" multiple="true" size="10" items="${branches}" itemLabel="name" itemValue="id" />
                    <form:errors path="organizers" cssClass="error" />
                </td>
            </tr>
            <tr>
            <td><label>Vrsta:</label></td>
                <td>
                <form:select path="eventCategory" items="${categories}" />
                <form:errors path="eventCategory" cssClass="error" />
                </td>
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
