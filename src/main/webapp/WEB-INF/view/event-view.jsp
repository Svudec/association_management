<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 20-May-20
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Događaj</title>

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
    <h3>${event.name}</h3>

    <security:authorize access="hasAnyRole('BOARD_MEMBER')">
        <div id="frm">
            <button type="button" onclick="if (confirm('Izbrisat ćeš događaj!')) return location.href='/event/delete?id=${param.get('EventId')}'" class="add-button">Izbriši</button>
        </div>
    </security:authorize>

        <table>
            <tbody>
            <tr>
                <td><label>Opis:</label></td>
                <td>${event.description}</td>
            </tr>
            <tr>
                <td><label>Početak:</label></td>
                <td>${event.niceStartDate()}</td>
            </tr>
            <tr>
                <td><label>Završetak:</label></td>
                <td>${event.niceEndDate()}</td>
            </tr>
            <tr>
                <td><label>Ukupno sudionika:</label></td>
                <td>${event.capacity}</td>
            </tr>
            <tr>
                <td><label>Cijena:</label></td>
                <td>${event.price} €</td>
            </tr>
            <tr>
                <td><label>Vrsta:</label></td>
                <td>${event.niceCategory()}</td>
            </tr>
            <tr>
                <td><label>Organizator(i):</label></td>
                <td>
                    <c:forEach var="tempOrganizer" items="${organizers}">
                            ${tempOrganizer.name}
                    </c:forEach>
            </tr>

            </tbody>
        </table>
    <br><br>

    <td/>
    <b>Naši sudionici</b>
    <td/>
        <div id="content">

            <form action="${pageContext.request.contextPath}/event/addParticipant" method="get">
                <select name="studentId">
                    <c:forEach var="tempStudent" items="${nonParticipants}">
                        <option value="${tempStudent.id}">${tempStudent.fullName}</option>
                    </c:forEach>
                </select>
                <input type="hidden" name="eventId" value="${param.get('EventId')}" />

                <input type="submit" value="Dodaj" class="add-button"/>
            </form>

            <table>
                <tr>
                    <th>Ime i prezime</th>
                    <th>Godina studija</th>
                    <th>Broj putovanja</th>
                    <th></th>
                </tr>

                <c:forEach var="tempStudent" items="${participants}">

                    <c:url var="detailsLink" value="/student/details">
                        <c:param name="studentId" value="${tempStudent.id}"/>
                    </c:url>
                    <c:url var="removeParticipantLink" value="/event/removeParticipant">
                        <c:param name="studentId" value="${tempStudent.id}"/>
                        <c:param name="eventId" value="${param.get('EventId')}"/>
                    </c:url>

                    <tr>
                        <td>${tempStudent.fullName}</td>
                        <td>${tempStudent.yearOfStudy}</td>
                        <td>${studentService.getNumberOfEventsParticipated(tempStudent.id)}</td>
                        <td>
                            <security:authorize access="hasAnyRole('BOARD_MEMBER')">
                                <a href="${detailsLink}">Otvori profil</a> | <a href="${removeParticipantLink}">Ukloni</a>
                            </security:authorize>
                        </td>
                    </tr>

                </c:forEach>
            </table>
        </div>
    </div>
</body>
</html>