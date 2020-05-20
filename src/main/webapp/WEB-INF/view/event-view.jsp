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
<html>
<head>
    <title>Događaj</title>

    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-table-style.css">
</head>
<body>

<div id="wrapper">
    <div id="header">
        <h2>Aplikacija za studentsku udrugu</h2>
    </div>
</div>

<div id="container">
    <h3>${event.name}</h3>

    <%--<form:form action="edit" modelAttribute="team" method="get">
        <form:hidden path="id"/>
        <input type="submit" value="Uredi" style="visibility: ${editButton}" class="add-button"/>
    </form:form>--%>

        <table>
            <tbody>
            <tr>
                <td><label>Opis:</label></td>
                <td>${event.description}</td>
            </tr>
            <tr>
                <td><label>Početak:</label></td>
                <td>${event.startDate}</td>
            </tr>
            <tr>
                <td><label>Završetak:</label></td>
                <td>${event.endDate}</td>
            </tr>
            <tr>
                <td><label>Ukupno sudionika:</label></td>
                <td>${event.capacity}</td>
            </tr>
            <tr>
                <td><label>Cijena:</label></td>
                <td>${event.price}</td>
            </tr>
            <tr>
                <td><label>Vrsta:</label></td>
                <td>${event.eventCategory}</td>
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
    <td/>
    <td style="font-size: large">Naši sudionici</td>
    <td/>
        <div id="content">

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

                    <tr>
                        <td>${tempStudent.name}</td>
                        <td>${tempStudent.surname}</td>
                        <td>${tempStudent.mail}</td>
                        <td>
                            <a href="${detailsLink}">Otvori profil</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</body>
</html>