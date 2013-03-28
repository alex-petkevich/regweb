<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Форма регистрации</title>
</head>
<body>
<form:form method="post" action="addform" commandName="form">

    <table>
        <tr>
            <td><form:label path="surname_1">Фамилия</form:label></td>
            <td><div class="errors"> <form:errors path="surname_1" /></div>
                <form:input path="surname_1" /></td>
        </tr>
        <tr>
            <td><form:label path="surname_2">
                Прежняя фамилия
            </form:label></td>
            <td><div class="errors"> <form:errors path="surname_2" /></div>
                <form:input path="surname_2" /></td>
        </tr>
        <tr>
            <td><form:label path="name_3">
                Имя
            </form:label></td>
            <td><div class="errors"> <form:errors path="name_3" /></div>
                <form:input path="name_3" /></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Сохранить" /></td>
        </tr>
    </table>
</form:form>
</body>