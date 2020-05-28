<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 28-May-20
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Upravljanje ulogama</title>

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

    <h4>Članovi upravnog odbora</h4>

    <div id="content">

        <form action="${pageContext.request.contextPath}/student/manageRoles/addBoard" method="get">
            <select name="studentId">
                <c:forEach var="tempStudent" items="${nonBoard}">
                    <option value="${tempStudent.id}">${tempStudent.fullName}</option>
                </c:forEach>
            </select>

            <input type="submit" value="Dodaj" class="add-button"/>
        </form>


        <table>
            <tr>
                <th>Korisničko ime</th>
                <th>Ime i Prezime</th>
                <th></th>
            </tr>

            <c:forEach var="tempStudent" items="${board_members}">

                <c:url var="detailsLink" value="/student/details">
                    <c:param name="studentId" value="${tempStudent.id}"/>
                </c:url>

                <c:url var="deleteMemberLink" value="/student/manageRoles/remove">
                    <c:param name="role" value="board_member"/>
                    <c:param name="studentId" value="${tempStudent.id}"/>
                </c:url>

                <tr>
                    <td>${tempStudent.username}</td>
                    <td>${tempStudent.fullName}</td>
                    <td>
                        <a href="${detailsLink}">Otvori profil</a> | <a href="${deleteMemberLink}">Ukloni</a>
                    </td>
                </tr>

            </c:forEach>
        </table>

    </div>
    <br><br>

    <h4>Administratori</h4>

    <div id="content2">

        <form action="${pageContext.request.contextPath}/student/manageRoles/addAdmin" method="get">
            <select name="studentId">
                <c:forEach var="tempStudent" items="${nonAdmin}">
                    <option value="${tempStudent.id}">${tempStudent.fullName}</option>
                </c:forEach>
            </select>

            <input type="submit" value="Dodaj" class="add-button"/>
        </form>

        <table>
            <tr>
                <th>Korisničko ime</th>
                <th>Ime i Prezime</th>
                <th></th>
            </tr>

            <c:forEach var="tempStudent" items="${admins}">

                <c:url var="detailsLink" value="/student/details">
                    <c:param name="studentId" value="${tempStudent.id}"/>
                </c:url>

                <c:url var="deleteMemberLink" value="/student/manageRoles/remove">
                    <c:param name="role" value="admin"/>
                    <c:param name="studentId" value="${tempStudent.id}"/>
                </c:url>

                <tr>
                    <td>${tempStudent.username}</td>
                    <td>${tempStudent.fullName}</td>
                    <td>
                        <a href="${detailsLink}">Otvori profil</a> | <a href="${deleteMemberLink}">Ukloni</a>
                    </td>
                </tr>

            </c:forEach>
        </table>

    </div>
</div>
</body>
</html>