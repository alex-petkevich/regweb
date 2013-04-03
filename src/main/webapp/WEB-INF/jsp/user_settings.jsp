<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Настройки пользователя</title>
</head>
<body>
<spring:url value="/settings" var="postUrl" />
<form:form method="post" action="${postUrl}" commandName="user">

    <c:if test="${ok}">
    <!-- Message OK -->
    <div class="msg msg-ok">
        <p><strong>Данные сохранены успешно</strong></p>
    </div>
    <!-- End Message OK -->
    </c:if>

    <c:if test="${error}">
    <!-- Message Error -->
    <div class="msg msg-error">
        <p><strong>Ошибка: неверный пароль</strong></p>
    </div>
    <!-- End Message Error -->
    </c:if>

    <div class="box">
    <!-- Box Head -->
    <div class="box-head">
        <h2>Персональные данные</h2>
    </div>
    <!-- Form -->
    <div class="form">
        <p>
            <label>Email: </label>
            <input type="text" name="email" value="${user.email}" class="field" />
        </p>
        <p>
            <label>Пароль: </label>
            <input type="password" name="password" value="" class="field" />
        </p>
        <p>
            <label>Подтвердите пароль: </label>
            <input type="password" name="password_confirm" value="" class="field" />
        </p>

    </div>
    <!-- End Form -->

    <div class="buttons">  <input type="submit" value="Сохранить" class="button" />

    </div>
</div>

</form:form>   <br /><br /><br />
</body>