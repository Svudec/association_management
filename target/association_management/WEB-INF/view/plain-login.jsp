<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 15-May-20
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Prijavi se</title>

    <style>
        .failed {
            color: red;
        }
    </style>
</head>
<body>
<h3>Prijavi se</h3>
<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">

    <c:if test="${param.error != null}">

        <i class="failed">Pogrešno korisničko ime i/ili lozinka!</i>
    </c:if>

    <p>
        Korisničko ime: <input type="text" name="username"/>
    </p>
    <p>
        Lozinka: <input type="password" name="password"/>
    </p>

    <input type="submit" value="Prijavi se"/>
</form:form>
</body>
</html>
