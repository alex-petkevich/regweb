<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/fmt" %>


<c:if test="${not empty param.error}">
    <font color="red"> ошибка
        : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message} </font>
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
            <td><input type="text" name="j_username" /></td>
        </tr>
        <tr>
            <td align="right">пароль</td>
            <td><input type="password" name="j_password" /></td>
        </tr>
        <tr>
            <td align="right">запомнить</td>
            <td><input type="checkbox" name="_spring_security_remember_me" /></td>
        </tr>
        
    </table>

        <div class="buttons"> <input type="submit" class="button" value="Войти" />

        </div>
    </div>

</form>
