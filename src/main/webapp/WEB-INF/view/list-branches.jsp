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

        <%--<input type="button" value="Novo okupljanje" onclick="window.location.href='showFormForAdd'; return false;"
               class="add-button">--%>

        <table>
            <tr>
                <th>Država</th>
                <th>Ogranak</th>
                <th>Organizirano događanja</th>
                <th></th>
            </tr>

            <c:forEach var="tempBranch" items="${branches}">

                <c:url var="eventsLink" value="/event/listByBranch">
                    <c:param name="BranchId" value="${tempBranch.id}"/>
                </c:url>

                <%--<c:url var="membersLink" value="/gathering/members">
                    <c:param name="GatheringId" value="${tempBranch.id}"/>
                </c:url>--%>

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
                </tr>

            </c:forEach>
        </table>

    </div>
</div>
</body>
</html>
