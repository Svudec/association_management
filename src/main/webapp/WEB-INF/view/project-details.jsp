<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 21-May-20
  Time: 04:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>${project.name}</title>

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
    <h3>${project.name}</h3>

    <security:authorize access="hasAnyRole('BOARD_MEMBER')">
        <div id="frm">
            <button type="button" onclick="if (confirm('Izbrisat ćeš projekt!')) return location.href='/project/delete?id=${param.get('ProjectId')}'" class="add-button">Izbriši</button>
        </div>
    </security:authorize>

        <table>
            <tbody>
            <tr>
                <td><label>Opis:</label></td>
                <td><b>${project.description}</b></td>
            </tr>
            <tr>
                <td><label>Početak:</label></td>
                <td><b>${project.niceStartDate()}</b></td>
            </tr>
            <tr>
                <td><label>Završetak:</label></td>
                <td><b>${project.niceEndDate()}</b></td>
            </tr>
            </tbody>
        </table>


<br>
<h2>Sponzorstva</h2>

<div id="content">

    <table>
        <tr>
            <th>Partner</th>
            <th>Iznos</th>
            <th></th>
        </tr>

        <c:forEach var="temp" items="${sponsorships}">

            <c:url var="sponsorshipLink" value="/sponsorship/details">
                <c:param name="partnerId" value="${temp.partner.id}"/>
                <c:param name="projectId" value="${temp.project.id}"/>
            </c:url>

            <tr>
                <td>${temp.partner.name}</td>
                <td>${temp.value}</td>
                <td>
                <a href="${sponsorshipLink}">Detalji</a>
                </td>
            </tr>

        </c:forEach>
    </table>
    <br>

    <h2>Sudionici</h2>
    <div id="content2">

        <form action="${pageContext.request.contextPath}/project/addParticipant" method="get">
            <select name="studentId">
                <c:forEach var="tempStudent" items="${nonParticipants}">
                    <option value="${tempStudent.id}">${tempStudent.fullName}</option>
                </c:forEach>
            </select>
            <input type="hidden" name="projectId" value="${param.get('ProjectId')}" />

            <input type="submit" value="Dodaj" class="add-button"/>
        </form>

        <table>
            <tr>
                <th>Ime</th>
                <th>Prezime</th>
                <th>Fakultet</th>
                <th>Godina</th>
                <th></th>
            </tr>

            <c:forEach var="temp" items="${participants}">

                <c:url var="detailsLink" value="/student/details">
                    <c:param name="studentId" value="${temp.id}"/>
                </c:url>
                <c:url var="removeParticipantLink" value="/project/removeParticipant">
                    <c:param name="studentId" value="${temp.id}"/>
                    <c:param name="projectId" value="${param.get('ProjectId')}"/>
                </c:url>

                <tr>
                    <td>${temp.name}</td>
                    <td>${temp.surname}</td>
                    <td>${temp.faculty}</td>
                    <td>${temp.yearOfStudy}</td>
                    <td>
                        <a href="${detailsLink}">Otvori profil</a> | <a href="${removeParticipantLink}">Ukloni</a>
                    </td>
                </tr>

            </c:forEach>
        </table>

    </div>
</div>

</div>

<h3 style="${showReceipts}">Računi</h3>
<div id="container2" style="${showReceipts}">
    <div id="content3">

        <table>
            <tr>
                <th>Vrijeme</th>
                <th>Vrsta</th>
                <th>Iznos</th>
                <th>Opis</th>
                <th></th>
            </tr>

            <c:forEach var="tempReceipt" items="${receipts}">

                <tr>
                    <td>${tempReceipt.niceTime()}</td>
                    <td>
                        <c:choose>
                            <c:when test="${tempReceipt.type.toString().equals('PRIHOD')}">+</c:when>
                            <c:otherwise>-</c:otherwise>
                        </c:choose>
                    </td>
                    <td>${receiptValues.get(tempReceipt.id)}</td>
                    <td>${tempReceipt.description}</td>
                    <td> <a onclick="if (!confirm('Izbrisat ćeš račun!')) return false" href="${deleteLink}">Izbriši</a> </td>
                </tr>

            </c:forEach>
        </table>

    </div>
</div>
</body>
</html>