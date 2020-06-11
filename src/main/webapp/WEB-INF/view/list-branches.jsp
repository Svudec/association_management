<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 20-May-20
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Popis lokalnih ogranaka</title>

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
    <div id="content">

        <security:authorize access="hasAnyRole('BOARD_MEMBER')">
            <form:form action="new" method="POST" modelAttribute="branch">

                <form:select path="countryId" >
                    <c:forEach var="country" items="${countries}">
                        <form:option value="${country.id}">${country
                        .name}</form:option>
                    </c:forEach>
                </form:select>
                <form:input path="name" placeholder="Naziv ogranka"/>
                <form:errors path="name" cssClass="error" />

                <input type="submit" value="Dodaj" class="add-button"/>
            </form:form>

        </security:authorize>

        <table>
            <tr>
                <th>Država</th>
                <th>Ogranak</th>
                <th>Organizirano događanja</th>
                <th></th>
                <th></th>
            </tr>

            <c:forEach var="tempBranch" items="${branches}">

                <c:url var="eventsLink" value="/event/listByBranch">
                    <c:param name="BranchId" value="${tempBranch.id}"/>
                </c:url>

                <c:url var="deleteLink" value="/branch/delete">
                    <c:param name="id" value="${tempBranch.id}"/>
                </c:url>

                <tr>
                    <td>
                    <c:if test="${!tempBranch.country.name.equals(last)}">
                        ${tempBranch.country.name}
                        <c:set var="last" scope="page" value="${tempBranch.country.name}"/>
                    </c:if>
                    </td>
                    <td>${tempBranch.name}</td>
                    <td>${branchService.getEventsNumber(tempBranch.id)}</td>
                    <td>
                        <a href="${eventsLink}">Događanja</a>
                    </td>
                    <security:authorize access="hasAnyRole('BOARD_MEMBER')">
                        <td>
                            <a onclick="if (!(confirm('Izbrisat ćeš ogranak!'))) return false" href="${deleteLink}">Izbriši</a>
                        </td>
                    </security:authorize>
                </tr>

            </c:forEach>
        </table>

    </div>
</div>
</body>
</html>
