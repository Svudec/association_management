<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 19-May-20
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Detalji tima</title>

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
    <h3>Tim</h3>

    <security:authorize access="hasAnyRole('BOARD_MEMBER')">
    <div id="frm">
        <form:form action="edit" modelAttribute="team" method="get">


                <form:hidden path="id"/>
                <input type="submit" value="Uredi" style="visibility: ${editButton}" class="add-button"/>
        </form:form>

        <form:form action="delete" modelAttribute="team" method="get">

            <form:hidden path="id"/>
            <input type="submit" value="Izbriši" style="visibility: ${editButton}" class="add-button"/>

        </form:form>
    </security:authorize>
    </div>


    <form:form action="save" modelAttribute="team" method="post">

        <form:hidden path="id"/>

        <table>
            <tbody>
            <tr>
                <td><label>Naziv:</label></td>
                <td>
                    <form:input disabled="${disabled_edit}" path="name" />
                    <form:errors path="name" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>Opis:</label></td>
                <td>
                    <form:textarea disabled="${disabled_edit}" rows="6" cols="50" path="description" />
                    <form:errors path="description" cssClass="error" />
                </td>
            </tr>
            <tr>
                <td><label>Voditelj:</label></td>
                <td><form:select disabled="${disabled_edit}" path="leaderId" >
                    <c:forEach var="tempLeader" items="${students}">
                        <form:option value="${tempLeader.key}">${tempLeader.value}</form:option>
                    </c:forEach>
                </form:select>
                
                </td>
            </tr>

            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Spremi" class="save" style="visibility: ${saveButton}"/></td>
            </tr>
            </tbody>
        </table>
    </form:form>
</div>
</body>
</html>