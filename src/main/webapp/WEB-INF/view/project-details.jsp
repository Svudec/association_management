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

            <tr>
                <td>${temp.partner.name}</td>
                <td>${temp.value}</td>
            </tr>

        </c:forEach>
    </table>
    <br>

    <h2>Sudionici</h2>

    <div id="content2">

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

                <tr>
                    <td>${temp.name}</td>
                    <td>${temp.surname}</td>
                    <td>${temp.faculty}</td>
                    <td>${temp.yearOfStudy}</td>
                    <td>
                        <a href="${detailsLink}">Otvori profil</a>
                    </td>
                </tr>

            </c:forEach>
        </table>

    </div>
</div>

</div>
</body>
</html>