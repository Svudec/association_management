<%--
  Created by IntelliJ IDEA.
  User: karlo
  Date: 18-May-20
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Forma za studenta</title>

    <link type="text/css" rel="stylesheet"
            href="${pageContext.request.contextPath}/resources/css/style.css">
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-table-style.css">
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
        <h3>Forma za studenta</h3>

        <form:form action="edit" modelAttribute="student" method="get">
            <form:hidden path="id"/>
            <input type="submit" value="Uredi" style="visibility: ${editButton}" class="add-button"/>
        </form:form>


        <form:form action="save" modelAttribute="student" method="post">

            <form:hidden path="id"/>

            <table>
                <tbody>
                <tr>
                    <td><label>Ime:</label></td>
                    <td><form:input disabled="${disabled_edit}" path="name" /></td>
                </tr>
                <tr>
                    <td><label>Prezime:</label></td>
                    <td><form:input disabled="${disabled_edit}" path="surname" /></td>
                </tr>
                <tr>
                    <td><label>Email adresa:</label></td>
                    <td><form:input disabled="${disabled_edit}" path="mail" /></td>
                </tr>
                <tr>
                    <td><label>Mobitel:</label></td>
                    <td><form:input disabled="${disabled_edit}" path="cellphone" /></td>
                </tr>
                <tr>
                    <td><label>OIB:</label></td>
                    <td><form:input disabled="${disabled_edit}" type="number" path="oib" /></td>
                </tr>
                <tr>
                    <td><label>Datum rođenja:</label></td>
                    <td><form:input disabled="${disabled_edit}" type="date" path="birthDate" /></td>
                </tr>
                <tr>
                    <td><label>Mjesto prebivališta:</label></td>
                    <td><form:input disabled="${disabled_edit}" path="hometown" /></td>
                </tr>
                <tr>
                    <td><label>Fakultet:</label></td>
                    <td><form:input disabled="${disabled_edit}" path="faculty" /></td>
                </tr>
                <tr>
                    <td><label>Godina studija:</label></td>
                    <td><form:input  disabled="${disabled_edit}" type="number" path="yearOfStudy" /></td>
                </tr>
                <tr>
                    <td><label>Smjer studija:</label></td>
                    <td><form:input disabled="${disabled_edit}" path="studyField" /></td>
                </tr>
                <tr>
                    <td><label>Student je član udruge:</label></td>
                    <td><form:checkbox  disabled="${disabled_edit}" path="member" /></td>
                </tr>
                <tr>
                    <td><label>Student je AKTIVAN član udruge:</label></td>
                    <td><form:checkbox disabled="${disabled_edit}" path="activeMember" /></td>
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
