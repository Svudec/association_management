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

    <!-- Logout button and Homepage button-->
    <form:form action="${pageContext.request.contextPath}/logout" method="POST">

        <input type="submit" value="Odjavi se" class="logout-button"/>
    </form:form>

    <input type="button" value="Početna stranica" onclick="window.location='/'; return false;"
           class="logout-button">

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
                    <td>
                        <form:input disabled="${disabled_edit}" path="name" />
                        <form:errors path="name" cssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td><label>Prezime:</label></td>
                    <td>
                        <form:input disabled="${disabled_edit}" path="surname" />
                        <form:errors path="surname" cssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td><label>Email adresa:</label></td>
                    <td>
                        <form:input disabled="${disabled_edit}" path="mail" />
                        <form:errors path="mail" cssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td><label>Mobitel:</label></td>
                    <td>
                        <form:input disabled="${disabled_edit}" path="cellphone" />
                        <form:errors path="cellphone" cssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td><label>OIB:</label></td>
                    <td>
                        <form:input disabled="${disabled_edit}" type="number" path="oib" />
                        <form:errors path="oib" cssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td><label>Datum rođenja:</label></td>
                    <td>
                        <form:input disabled="${disabled_edit}" type="date" path="birthDate" />
                        <form:errors path="birthDate" cssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td><label>Mjesto prebivališta:</label></td>
                    <td>
                        <form:input disabled="${disabled_edit}" path="hometown" />
                        <form:errors path="hometown" cssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td><label>Fakultet:</label></td>
                    <td>
                        <form:input disabled="${disabled_edit}" path="faculty" />
                        <form:errors path="faculty" cssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td><label>Godina studija:</label></td>
                    <td>
                        <form:input  disabled="${disabled_edit}" type="number" path="yearOfStudy" />
                        <form:errors path="yearOfStudy" cssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td><label>Smjer studija:</label></td>
                    <td>
                        <form:input disabled="${disabled_edit}" path="studyField" />
                        <form:errors path="studyField" cssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td><label>Student je član udruge:</label></td>
                    <td>
                        <form:checkbox  disabled="${disabled_edit}" path="member" />
                        <form:errors path="member" cssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td><label>Student je AKTIVAN član udruge:</label></td>
                    <td>
                        <form:checkbox disabled="${disabled_edit}" path="activeMember" />
                        <form:errors path="activeMember" cssClass="error" />
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
