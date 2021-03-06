<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 19-May-20
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Dodaj člana</title>

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
    <h3>Dodaj člana</h3>

<form:form method="post" action="/${mappingPath}/addMember" modelAttribute="newMember">
    <table>
        <tbody>
            <tr>
                <td><label>Studenti:</label></td>
                <td><label>
                    <form:select path="memberToAdd">
                        <c:forEach var="tempStudent" items="${nonMembers}">
                            <form:option value="${tempStudent.key}">${tempStudent.value}</form:option>
                        </c:forEach>
                    </form:select>
                    <form:input type="hidden" path="id" value="${param.get('id')}" />
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