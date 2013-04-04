<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Настройки пользователя</title>
</head>
<body>
<spring:url value="/adduser" var="postUrl" />
<form:form method="post" action="${postUrl}" commandName="user">
    <form:hidden path="id" />
    <c:if test="${ok}">
    <!-- Message OK -->
    <div class="msg msg-ok">
        <p><strong>Данные сохранены успешно</strong></p>
    </div>
    <!-- End Message OK -->
    </c:if>

    <c:if test="${error == 1}">
    <!-- Message Error -->
    <div class="msg msg-error">
        <p><strong>Ошибка: неверный пароль</strong></p>
    </div>
    <!-- End Message Error -->
    </c:if>
    <c:if test="${error == 2}">
        <!-- Message Error -->
        <div class="msg msg-error">
            <p><strong>Ошибка: пользователь с таким именем существует</strong></p>
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
            <label>Username: </label>
            <div class="errors"> <form:errors path="username" /></div>
            <form:input path="username" cssClass="field size1" />
        </p>
        <p>
            <label>Email: </label>
            <div class="errors"> <form:errors path="email" /></div>
            <form:input path="email" cssClass="field size1" />
        </p>
        <p>
            <label>Активный: </label>
            <form:checkbox path="enabled" value="1" cssClass="field" />
        </p>
        <p>
            <label>Администратор: </label>
            <input type="checkbox" name="is_admin" value="1"<c:if test="${not empty is_admin}"> checked="checked" </c:if> class="field" />
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