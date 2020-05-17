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

<html>
<head>
    <title>Početna stranica</title>
</head>
    <hr>
    <h2>Početna stranica</h2>
    <hr>

    <p>
        Dobrodošli!
    </p>

    <hr>
    <p>
        Korisnik: <security:authentication property="principal.username"/>
        <br>
    </p>
    <hr>

    <!-- Logout button -->
    <form:form action="${pageContext.request.contextPath}/logout" method="POST">

        <input type="submit" value="Odjavi se"/>
    </form:form>
</body>
</html>
