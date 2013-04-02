<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <script type="text/javascript">
        $(function(){
            $('.del').on('click',function(){
                return confirm('Вы действительно хотите удалить анкету?');
            });
        });
    </script>
</head>
<body>
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
                <td><fmt:formatDate dateStyle="full" pattern="dd.MM.yyyy HH:mm" value="${form.added}"/></td>
                <td>${form.surname_1}</td>
                <td>${form.name_3}</td>
                <td>${form.passnum_13}</td>
                <td><c:if test="${form.is_registered}">готово</c:if></td>
                <td><a href="edit/${form.id}">[o]</a> <a href="delete/${form.id}" class="del">[x]</a></td>
            </tr>
        </c:forEach>
    </table>
    </c:when>
    <c:otherwise>
    Ничего не найдено
    </c:otherwise>
</c:choose>
</body>