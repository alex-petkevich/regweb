<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:if test="${not empty param.error}">
    <div class="msg msg-error">
        <p><strong>ошибка: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</strong></p>
    </div>
</c:if>
<form method="POST" action="<c:url value="/j_spring_security_check" />">
    <div class="box">
        <!-- Box Head -->
        <div class="box-head">
            <h2>Вход</h2>
        </div>

        <table>
        <tr>
            <td align="right">логин</td>
            <td><input type="text" name="j_username" class="field" /></td>
        </tr>
        <tr>
            <td align="right">пароль</td>
            <td><input type="password" name="j_password" class="field" /></td>
        </tr>
        <tr>
            <td align="right">запомнить</td>
            <td><input type="checkbox" name="_spring_security_remember_me" /></td>
        </tr>
        
    </table>

        <div class="buttons"> <input type="submit" class="button" value="Войти" />

        </div>
    </div>
<div align="center">
    <a href="<spring:url value="/addnewacc" />" class="fill_href">Заполнить заявку без регистрации</a>
</div>
</form>
