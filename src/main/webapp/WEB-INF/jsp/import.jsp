<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 3/9/15
  Time: 10:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Импорт анкет</title>
    <script type="text/javascript" src="<spring:url value="/js/validation.js" />"></script>
    <script type="text/javascript" src="<spring:url value="/js/moment.min.js" />"></script>
    <script type="text/javascript" src="<spring:url value="/js/moment_ru.js" />"></script>
    <script type="text/javascript" src="<spring:url value="/js/clndr.min.js" />"></script>
    <script type="text/javascript" src="<spring:url value="/js/underscore-min.js" />"></script>
    <script type="text/javascript" src="<spring:url value="/js/types.js" />"></script>
    <link type="text/css" href="<spring:url value="/css/clndr.css" />" rel="stylesheet" />
    <script type="text/javascript">
        $(function() {
            $('#city').on("change",checkRoboSubmit);
            $('#type').on("change",checkRoboSubmit);
        });
        function checkRoboSubmit() {
            var res = true;
            $("#city_err").hide();
            $("#type_err").hide();
            if ($("#city").val() == "") {
                res = false;
                $("#city_err").show();
            }
            if ($("#type").val() == "") {
                res = false;
                $("#type_err").show();
            }
            return res;
        }
    </script>
</head>
<body>

<div class="box">
    <div class="box-head">
        <h2>Выбор цели и города</h2>
    </div>
    <div style="padding: 20px">
        <div id="city_err" class="errors hide">Поле Город подачи для обязательного заполнения </div>
        <div class="errors"><form:errors path="city" /></div>

        Город подачи: <select name="city" id="city">
        <option value="">=======</option>
        <option value="minsk"<c:if test="${city eq 'minsk'}"> selected="selected" </c:if>> Минск</option>
        <option value="brest"<c:if test="${city eq 'brest'}"> selected="selected" </c:if>>Брест</option>
        <option value="grodno"<c:if test="${city eq 'grodno'}"> selected="selected" </c:if>>Гродно</option>
    </select> <br /><br />
        <div id="type_err" class="errors hide">Поле Тип для обязательного заполнения </div>
        <div class="errors"><form:errors path="type" /></div>
        Тип: <select name="type" id="type">
        <option value="">=======</option>
    </select>
    </div>
</div>
<script type="text/javascript">
    $("#city").on('change',function() {
        $("#type").empty();
        $("#type").append('<option value="">=========</option>');
        if ($(this).val() != "") {
            for (var key in types[$(this).val()]) {
                $("#type").append('<option value="'+key+'">' + types[$(this).val()][key] + '</option>');
            }
            if ($("#type_hid").val()!="") {
                $("#type").val($("#type_hid").val());
            }
        }
    });
    if ($("#city").val()!="") {
        $("#city").change();
    }
    $("#type").on('change',function() {
        $("#type_hid").val();
    });
    $("#city").on('change',function() {
        $("#city_hid").val();
    });

</script>

<c:if test="${not empty param.totalConverted}">
    <div class="msg msg-ok">
        <p><strong>Успешно сконвертировано анкет: ${param.totalConverted}</strong></p>
    </div>
</c:if>
<c:if test="${not empty param.errorConvert}">
    <div class="msg msg-error">
        <p><strong>При конвертации найдены ошибки в исходных данных: <br /> ${sessionScope["errorImport"]}</strong></p>
    </div>
</c:if>

    <spring:url value="/import" var="importUrl" />
    <form:form modelAttribute="fileUpload"  method="post" action="${importUrl}" onsubmit="return checkRoboSubmit()"  enctype="multipart/form-data">

        <div class="box">
            <div class="box-head">
                <h2>Импорт анкеты</h2>
            </div>
            <table>
                <tr>
                    <td colspan="2">
                        <div class="errors"> ${importError}</div>

                        Импорт из Roboform XML:    <form:input path="fileData" type="file"/>
                    </td>
                </tr>
            </table>
            <div class="buttons">
                <input type="submit" value="Сохранить" class="button" />

            </div>

        </div>
        <input type="hidden" name="city" id="city_hid" value="${city}" />
        <input type="hidden" name="type" id="type_hid" value="${type}" />

    </form:form>

  <br /><br /><br />
</body>
