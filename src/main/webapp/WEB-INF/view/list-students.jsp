<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 16-May-20
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Popis studenata</title>

    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">
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
        <div id="content">

            <security:authorize access="hasAnyRole('BOARD_MEMBER', 'ADMIN')">
                <input type="button" value="Dodaj studenta" onclick="window.location.href='showFormForAdd'; return false;"
                class="add-button" style="${studentButton}">

                <input type="button" value="Dodaj člana" onclick="window.location.href='formAddMember?TeamId=${param.get("TeamId")}'; return false;"
                   class="add-button" style="${memberButton}">
            </security:authorize>

            <input type="button" value="Početna stranica" onclick="window.location='/'; return false;"
                   class="add-button">

            <table>
                <tr>
                    <th>Ime</th>
                    <th>Prezime</th>
                    <th>Email</th>
                    <th></th>
                </tr>

                <c:forEach var="tempStudent" items="${students}">

                    <c:url var="detailsLink" value="/student/details">
                        <c:param name="studentId" value="${tempStudent.id}"/>
                    </c:url>

                    <c:url var="deleteMemberLink" value="/team/removeMember">
                        <c:param name="TeamId" value="${param.get('TeamId')}"/>
                        <c:param name="MemberId" value="${tempStudent.id}"/>
                    </c:url>

                    <tr>
                        <td>${tempStudent.name}</td>
                        <td>${tempStudent.surname}</td>
                        <td>${tempStudent.mail}</td>
                        <td>
                            <security:authorize access="hasAnyRole('BOARD_MEMBER', 'ADMIN')">
                            <a href="${detailsLink}">Otvori profil</a> | <a href="${deleteMemberLink}" style="${memberButton}">Ukloni</a>
                            </security:authorize>
                        </td>
                    </tr>

                </c:forEach>
            </table>

        </div>
    </div>
</body>
</html>
