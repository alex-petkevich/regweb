<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:choose>
    <c:when test="${!empty formsList}">
    <table class="data" border="1">
        <tr>
            <th>Дата добавления</th>
            <th>Фамилия</th>
            <th>Имя</th>
            <th>Номер паспорта</th>
            <th>Результат</th>
            <th>&nbsp;</th>
        </tr>
        <c:forEach items="${formsList}" var="form">
            <tr>
                <td>${form.added}</td>
                <td>${form.surname_1}</td>
                <td>${form.name_3}</td>
                <td>${form.passnum_13}</td>
                <td>${form.is_registered}</td>
                <td><a href="edit/${form.id}">[o]</a> <a href="delete/${form.id}">[x]</a></td>
            </tr>
        </c:forEach>
    </table>
    </c:when>
    <c:otherwise>
    Ничего не найдено
    </c:otherwise>
</c:choose>
