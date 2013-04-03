<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <script type="text/javascript">
        $(function(){
            $('.del').on('click',function(){
                return confirm('Вы действительно хотите удалить пользователя?');
            });
         });
    </script>
</head>
<body>
        <!-- Box -->
        <div class="box">
            <!-- Box Head -->
            <spring:url value="/" var="postUrl" />
            <form:form method="get" action="${postUrl}">
                <input type="hidden" name="clear" id="clear_val" value="" />
                <div class="box-head">
                <h2 class="left">Пользователи</h2>
                <div class="right">
                </div>
            </div>
            </form:form>
            <!-- End Box Head -->

            <c:choose>
            <c:when test="${!empty usersList}">
            <!-- Table -->
            <div class="table">
                <table width="99%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <th><a href="<spring:url value="/users" />?sort=username<c:if test="${empty dir}">&dir=desc</c:if>">Имя пользователя</a></th>
                        <th><a href="<spring:url value="/users" />?sort=email<c:if test="${empty dir}">&dir=desc</c:if>">Email</a></th>
                        <th><a href="<spring:url value="/users" />?sort=added<c:if test="${empty dir}">&dir=desc</c:if>">Дата добавления</a></th>
                        <th><a href="<spring:url value="/users" />?sort=enabled<c:if test="${empty dir}">&dir=desc</c:if>">Активен?</a></th>
                        <th>Роль</th>
                        <th width="50" class="ac">контроль</th>
                    </tr>
                    <c:forEach items="${usersList}" var="user">
                        <tr>
                            <td<c:if test="${not user.enabled}"> class="reged"</c:if>>${user.username}</td>
                            <td<c:if test="${not user.enabled}"> class="reged"</c:if>>${user.email}</td>
                            <td<c:if test="${not user.enabled}"> class="reged"</c:if>><fmt:formatDate dateStyle="full" pattern="dd.MM.yyyy HH:mm" value="${user.added}"/></td>
                            <td<c:if test="${not user.enabled}"> class="reged"</c:if>><c:choose><c:when test="${user.enabled}"><b>да</b> <a href="<spring:url value="/user-disable/" />${user.username}">нет</a></c:when><c:otherwise><a href="<spring:url value="/user-enable/" />${user.username}">да</a> <b>нет</b> </c:otherwise></c:choose></td>
                            <td<c:if test="${not user.enabled}"> class="reged"</c:if>></td>
                            <td<c:if test="${not user.enabled}"> class="reged"</c:if>><a href="edit/${user.username}" class="ico edit">x</a> <a href="delete/${user.username}"  class="ico del">x</a></td>
                        </tr>
                    </c:forEach>
                </table>


                <!-- Pagging 
                <div class="pagging">
                    <div class="left">Showing 1-12 of 44</div>
                    <div class="right">
                        <a href="#">Previous</a>
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">245</a>
                        <span>...</span>
                        <a href="#">Next</a>
                        <a href="#">View all</a>
                    </div>
                </div>
                -->

            </div>
            <!-- Table -->

            </c:when>
                <c:otherwise>
                    <div style="margin:20px;"><b>Ничего не найдено</b></div>
                </c:otherwise>
            </c:choose>

        </div>
        <!-- End Box -->

</body>