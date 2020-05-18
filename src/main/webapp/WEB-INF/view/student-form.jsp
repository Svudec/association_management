<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 18-May-20
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Dodaj studenta</title>

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
        <h3>Dodaj studenta</h3>

        <form:form action="saveStudent" modelAttribute="student" method="post">

            <table>
                <tbody>
                <tr>
                    <td><label>Ime:</label></td>
                    <td><form:input path="name" /></td>
                </tr>
                <tr>
                    <td><label>Prezime:</label></td>
                    <td><form:input path="surname" /></td>
                </tr>
                <tr>
                    <td><label>Email adresa:</label></td>
                    <td><form:input path="mail" /></td>
                </tr>

                <tr>
                    <td><label></label></td>
                    <td><input type="submit" value="Spremi" class="save"/></td>
                </tr>
                </tbody>
            </table>
        </form:form>
    </div>
</body>
</html>
