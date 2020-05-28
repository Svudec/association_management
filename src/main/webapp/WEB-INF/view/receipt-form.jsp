<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 20-May-20
  Time: 23:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Račun</title>

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
    <h3>Račun</h3>

    <form:form action="save" modelAttribute="receipt" method="post">

        <form:hidden path="id"/>

        <table>
            <tbody>
            <tr>
                <td><label>Vrsta:</label></td>
                <td>
                    <form:select path="type">
                        <form:option value="PRIHOD">PRIHOD</form:option>
                        <form:option value="RASHOD">RASHOD</form:option>
                    </form:select>
                </td>
            </tr>
            <tr>
                <td><label>Iznos:</label></td>
                <td>
                    <form:input type="number" step="0.01" path="value" />
                    <form:errors path="value" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>Napomena:</label></td>
                <td>
                    <form:textarea rows="4" cols="50" path="description" />
                    <form:errors path="description" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>Projekt:</label></td>
                <td><form:select path="projectReceiptId" >
                    <form:option value="0">------</form:option>
                    <c:forEach var="tempProject" items="${projects}">
                        <form:option value="${tempProject.id}">${tempProject.name}</form:option>
                    </c:forEach>
                </form:select>
                </td>
            </tr>
            <tr>
                <td><label>Okupljanje:</label></td>
                <td><form:select path="gatheringReceiptId" >
                    <form:option value="0">------</form:option>
                    <c:forEach var="tempGathering" items="${gatherings}">
                        <form:option value="${tempGathering.id}">${tempGathering.name}</form:option>
                    </c:forEach>
                </form:select>
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