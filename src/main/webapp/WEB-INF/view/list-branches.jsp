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

        <%--<input type="button" value="Novo okupljanje" onclick="window.location.href='showFormForAdd'; return false;"
               class="add-button">--%>

        <table>
            <tr>
                <th>Država</th>
                <th>Ogranak</th>
                <th>Broj događanja</th>
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
                    <td>${tempBranch.country.name}</td>
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
