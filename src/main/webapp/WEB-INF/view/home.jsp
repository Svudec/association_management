<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 15-May-20
  Time: 01:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Početna stranica</title>

    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-table-style.css">
</head>
<body>

<div class="navigation">

    <div class="my-menu">
        <!-- Logout button-->
        <form:form action="${pageContext.request.contextPath}/logout" method="POST">

            <input type="submit" value="Odjavi se" class="logout-button my-menu-button"/>
        </form:form>
    </div>

</div>

<div id="wrapper">
    <div id="header">
        <h2>Aplikacija za studentsku udrugu</h2>
    </div>
</div>

<h2>Korisnik: <security:authentication property="principal.username"/></h2>
<h3>Uloga: <security:authentication property="principal.authorities"/></h3>
<br/>

<div><h4>Općenito</h4></div>
<div id="container">

<a href="${pageContext.request.contextPath}/student/list" class="homeButton">Studenti</a>
    <a href="${pageContext.request.contextPath}/team/list" class="homeButton">Timovi</a>
    <a href="${pageContext.request.contextPath}/gathering/list" class="homeButton">Okupljanja</a>
<security:authorize access="hasAnyRole('ADMIN')">
    <a href="${pageContext.request.contextPath}/student/manageRoles" class="homeButton">Administriranje</a>
</security:authorize>
</div>
<br/>
<div><h4>Međunarodna sfera</h4></div>
<div>
    <a href="${pageContext.request.contextPath}/event/list" class="homeButton">Internacionalna Putovanja</a>
    <a href="${pageContext.request.contextPath}/branch/list" class="homeButton">Lokalni ogranci</a>
</div>
<br/>
<div><h4>Projekti i financije</h4></div>
<div>
    <a href="${pageContext.request.contextPath}/project/list" class="homeButton">Projekti</a>
<security:authorize access="hasAnyRole('BOARD_MEMBER')">
    <a href="${pageContext.request.contextPath}/receipt/list" class="homeButton">Financije</a>
</security:authorize>
</div>

</body>
</html>
