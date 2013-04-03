<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Форма регистрации</title>
    <script>
        $(function() {
            $( ".datepicker" ).datepicker({
                    showOtherMonths: true,
                    selectOtherMonths: true,
                    changeMonth: true,
                    changeYear: true,
                    dateFormat: "yy-mm-dd"

            });
            $("#is_children1").on('click',function(){
                if (this.checked) {
                    check_children(false);                 
                } else {
                    check_children(true);
                }
            });
            $("#invite_311").on('click',function() {
                check_inv1();
            });
            $("#invite_312").on('click',function() {
                check_inv2();
            });
            if ($("#is_children1").attr("checked")) {
                check_children(false);
            }
            if ($("#invite_311").attr("checked")) {
                check_inv1();
            }
            if ($("#invite_312").attr("checked")) {
                check_inv2();
            }
            $('#copy').on('click',function() {
                $('#copy_val').attr('value','1');
                $('#form').submit();
            });
        });
        
        function check_children(enable) {
            if (enable) {
                $('#citizenship_child').removeAttr("disabled");
                $('#name_child').removeAttr("disabled");
                $('#surname_child').removeAttr("disabled");
                $('#country_child').removeAttr("disabled");
                $('#state_child').removeAttr("disabled");
                $('#city_child').removeAttr("disabled");
                $('#index_child').removeAttr("disabled");
                $('#address_child').removeAttr("disabled");
            } else {
                $('#citizenship_child').attr("disabled","disabled");
                $('#name_child').attr("disabled","disabled");
                $('#surname_child').attr("disabled","disabled");
                $('#country_child').attr("disabled","disabled");
                $('#state_child').attr("disabled","disabled");
                $('#city_child').attr("disabled","disabled");
                $('#index_child').attr("disabled","disabled");
                $('#address_child').attr("disabled","disabled");
            }
        }
        function check_inv1() {
                $('#title_31').attr("disabled","disabled");
                $('#name_31').removeAttr("disabled");
                $('#surname_31').removeAttr("disabled");
        }
        function check_inv2() {
                $('#title_31').removeAttr("disabled");
                $('#name_31').attr("disabled","disabled");
                $('#surname_31').attr("disabled","disabled");
        }
    </script>
</head>
<body>
<spring:url value="/addform" var="postUrl" />
<form:form method="post" action="${postUrl}" commandName="form">
<form:hidden path="id" />
<input type="hidden" name="copy" id="copy_val" value="" />
<div class="box">
<!-- Box Head -->
<div class="box-head">
    <h2>Персональные данные</h2>
</div>

    <table>
         <tr>
            <td colspan="2"><form:label path="surname_1" cssClass="sign">1. Фамилия(-и)  </form:label><br/>
                <div class="errors"> <form:errors path="surname_1" /></div>
                <form:input path="surname_1" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="surname_2" cssClass="sign">2. Родовая (-ые) фамилия (-и) (прежняя (-ие) фамилия (-и)</form:label><br/>
                <div class="errors"> <form:errors path="surname_2" /></div>
                <form:input path="surname_2" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="name_3" cssClass="sign">3. Имена</form:label><br/>
                <div class="errors"> <form:errors path="name_3" /></div>
                <form:input path="name_3" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="birthdate_4" cssClass="sign">4. Дата рождения (год-месяц-день)</form:label><br/>
                <div class="errors"> <form:errors path="birthdate_4" /></div>
                <form:input path="birthdate_4" cssClass="field datepicker" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="placedate_5" cssClass="sign">5. Место рождения</form:label><br/>
                <div class="errors"> <form:errors path="placedate_5" /></div>
                <form:input path="placedate_5" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="country_6" cssClass="sign">6. Страна рождения</form:label><br/>
                <div class="errors"> <form:errors path="country_6" /></div>
                <form:select items="${countiresOldList}" cssClass="field" path="country_6" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="citizenship_7" cssClass="sign">7. Гражданство (а) в настоящее время </form:label><br/>
                <div class="errors"> <form:errors path="citizenship_7" /></div>
                <form:select items="${countiresList}" cssClass="field" path="citizenship_7" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="citizenship_born_8" cssClass="sign">8. Гражданство при рождении (национальность)</form:label><br/>
                <div class="errors"> <form:errors path="citizenship_born_8" /></div>
                <form:select items="${countiresOldList}" cssClass="field" path="citizenship_born_8" /></td>
        </tr>
        <tr>
            <td><form:label path="sex_9" cssClass="sign">9. Пол </form:label><br/>
                <div class="errors"> <form:errors path="sex_9" /></div>
                <form:radiobuttons items="${sexList}" delimiter="<br>" path="sex_9" /></td>
            <td><form:label path="family_10" cssClass="sign">10. Семейное положение  </form:label><br/>
                <div class="errors"> <form:errors path="family_10" /></div>
                <form:radiobuttons cssClass="field" delimiter="<br>" items="${mStatusList}" path="family_10" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="identnum_11" cssClass="sign">11. Национальный идентификационный номер</form:label><br/>
                <div class="errors"> <form:errors path="identnum_11" /></div>
                <form:input path="identnum_11" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2" class="table-title">Паспортные данные</td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="passdata_12" cssClass="sign">12. Тип проездного документа</form:label><br/>
                <div class="errors"> <form:errors path="passdata_12" /></div>
                <form:radiobuttons delimiter="<br>" items="${docTypeList}" path="passdata_12" /></td>
        </tr>
        <tr>                
            <td colspan="2"><form:label path="passnum_13" cssClass="sign">13. Номер проездного документа</form:label><br/>
                <div class="errors"> <form:errors path="passnum_13" /></div>
                <form:input path="passnum_13" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td><form:label path="passissuedate_14" cssClass="sign">14.Дата выдачи (год-месяц-день)</form:label><br/>
                <div class="errors"> <form:errors path="passissuedate_14" /></div>
                <form:input path="passissuedate_14" cssClass="field datepicker" /></td>
            <td><form:label path="passexpiration_15" cssClass="sign">15. Действителен до (год-месяц-день)  </form:label><br/>
                <div class="errors"> <form:errors path="passexpiration_15" /></div>
                <form:input path="passexpiration_15" cssClass="field datepicker" /></td>
        </tr>
        <tr>                         
            <td colspan="2"><form:label path="passby_16" cssClass="sign">16. Кем выдан</form:label><br/>
                <div class="errors"> <form:errors path="passby_16" /></div>
                <form:input path="passby_16" cssClass="field size1" /></td>
        </tr>
        </table>
        </div>

<div class="box">
<!-- Box Head -->
<div class="box-head">
    <h2>Для несовершеннолетних: фамилия, имя, адрес и гражданство лица с полномочием родителей / законного представителя</h2>
</div>

        <table>
         <tr>
            <td colspan="2"> <form:checkbox path="is_children" value="1" /> Не касается</td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="citizenship_child" cssClass="sign">Гражданство </form:label><br/>
                <div class="errors"> <form:errors path="citizenship_child" /></div>
                <form:select items="${countiresOldList}" cssClass="field size1" path="citizenship_child" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="name_child" cssClass="sign">Имя</form:label><br/>
                <div class="errors"> <form:errors path="name_child" /></div>
                <form:input path="name_child" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="surname_child" cssClass="sign">Фамилия</form:label><br/>
                <div class="errors"> <form:errors path="surname_child" /></div>
                <form:input path="surname_child" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="country_child" cssClass="sign">Государство </form:label><br/>
                <div class="errors"> <form:errors path="country_child" /></div>
                <form:select items="${countiresList}" cssClass="field size1" path="country_child" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="state_child" cssClass="sign">Штат/провинция</form:label><br/>
                <div class="errors"> <form:errors path="state_child" /></div>
                <form:input path="state_child" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="city_child" cssClass="sign">Место</form:label><br/>
                <div class="errors"> <form:errors path="city_child" /></div>
                <form:input path="city_child" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="index_child" cssClass="sign">Почтовый индекс</form:label><br/>
                <div class="errors"> <form:errors path="index_child" /></div>
                <form:input path="index_child" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="address_child" cssClass="sign">Адрес </form:label><br/>
                <div class="errors"> <form:errors path="address_child" /></div>
                <form:input path="address_child" cssClass="field size1" /></td>
        </tr>
         </table>
</div>

<div class="box">
<!-- Box Head -->
<div class="box-head">
    <h2>Общая информация</h2>
</div>
        <table>
        <tr>
            <td colspan="2"><b>17. Домашний адрес и адрес электронной почты заявителя</b></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="country_17" cssClass="sign">Государство </form:label><br/>
                <div class="errors"> <form:errors path="country_17" /></div>
                <form:select items="${countiresList}" cssClass="field size1" path="country_17" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="state_17" cssClass="sign">Штат/провинция</form:label><br/>
                <div class="errors"> <form:errors path="state_17" /></div>
                <form:input path="state_17" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="city_17" cssClass="sign">Место</form:label><br/>
                <div class="errors"> <form:errors path="city_17" /></div>
                <form:input path="city_17" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="index_17" cssClass="sign">Почтовый индекс</form:label><br/>
                <div class="errors"> <form:errors path="index_17" /></div>
                <form:input path="index_17" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="address_17" cssClass="sign">Адрес </form:label><br/>
                <div class="errors"> <form:errors path="address_17" /></div>
                <form:input path="address_17" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="email_17" cssClass="sign">Email </form:label><br/>
                <div class="errors"> <form:errors path="email_17" /></div>
                <form:input path="email_17" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="preftel_17" cssClass="sign">Префикс тел. </form:label><br/>
                <div class="errors"> <form:errors path="preftel_17" /></div>
                <form:input path="preftel_17" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="tel_17" cssClass="sign">Номер тел. </form:label><br/>
                <div class="errors"> <form:errors path="tel_17" /></div>
                <form:input path="tel_17" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="countryvisitor_18" cssClass="sign">18. Страна пребывания, если не является страной гражданства</form:label><br/>
                <div class="errors"> <form:errors path="countryvisitor_18" /></div>
                <form:radiobuttons delimiter="<br>" items="${countryPosList}" path="countryvisitor_18" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="visitdoc_18" cssClass="sign">Номер</form:label><br/>
                <div class="errors"> <form:errors path="visitdoc_18" /></div>
                <form:input path="visitdoc_18" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="expdate_18" cssClass="sign">Действителен до (год-месяц-день)</form:label><br/>
                <div class="errors"> <form:errors path="expdate_18" /></div>
                <form:input path="expdate_18" cssClass="field datepicker" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="profession_19" cssClass="sign">19. Профессиональная деятельность в настоящее время  </form:label><br/>
                <div class="errors"> <form:errors path="profession_19" /></div>
                <form:select items="${professionList}" cssClass="field size1" path="profession_19" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="employee_20" cssClass="sign">20. Работодатель; адрес и телефон работодателя. Для студентов, школьников – название и адрес учебного заведения</form:label><br/>
                <div class="errors"> <form:errors path="employee_20" /></div>
                <form:radiobuttons delimiter="<br>" items="${employeeList}" path="employee_20" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="country_20" cssClass="sign">Государство </form:label><br/>
                <div class="errors"> <form:errors path="country_20" /></div>
                <form:select items="${countiresList}" cssClass="field size1" path="country_20" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="state_20" cssClass="sign">Штат/провинция</form:label><br/>
                <div class="errors"> <form:errors path="state_20" /></div>
                <form:input path="state_20" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="city_20" cssClass="sign">Место</form:label><br/>
                <div class="errors"> <form:errors path="city_20" /></div>
                <form:input path="city_20" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="index_20" cssClass="sign">Почтовый индекс</form:label><br/>
                <div class="errors"> <form:errors path="index_20" /></div>
                <form:input path="index_20" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="address_20" cssClass="sign">Адрес </form:label><br/>
                <div class="errors"> <form:errors path="address_20" /></div>
                <form:input path="address_20" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="preftel_20" cssClass="sign">Префикс тел. </form:label><br/>
                <div class="errors"> <form:errors path="preftel_20" /></div>
                <form:input path="preftel_20" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="tel_20" cssClass="sign">Номер тел. </form:label><br/>
                <div class="errors"> <form:errors path="tel_20" /></div>
                <form:input path="tel_20" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="title_20" cssClass="sign">Название </form:label><br/>
                <div class="errors"> <form:errors path="title_20" /></div>
                <form:input path="title_20" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="email_20" cssClass="sign">Email </form:label><br/>
                <div class="errors"> <form:errors path="email_20" /></div>
                <form:input path="email_20" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="preffax_20" cssClass="sign">Префикс факс. </form:label><br/>
                <div class="errors"> <form:errors path="preffax_20" /></div>
                <form:input path="preffax_20" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="fax_20" cssClass="sign">Номер факс. </form:label><br/>
                <div class="errors"> <form:errors path="fax_20" /></div>
                <form:input path="fax_20" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="goal_21" cssClass="sign">21. Главная цель/-и поездки: </form:label><br/>
                <div class="errors"> <form:errors path="goal_21" /></div>
                <form:checkboxes delimiter="<br>" items="${goalsList}"  path="goal_21" />
                <br>
                <form:input path="goalother_21" cssClass="field size1" />
            </td>
        </tr>
            </table>
</div>

<div class="box">
    <!-- Box Head -->
    <div class="box-head">
        <h2>Сведения, касающиеся поездки</h2>
    </div>
    <table>
        <tr>
            <td><form:label path="dest_country_22" cssClass="sign">22. Страна (ы) назначения </form:label><br/>
                <div class="errors"> <form:errors path="dest_country_22" /></div>
                <form:select items="${inputCountriesList}" cssClass="field" path="dest_country_22" /></td>
            <td><form:label path="first_country_23" cssClass="sign">23. Страна первого въезда</form:label><br/>
                <div class="errors"> <form:errors path="first_country_23" /></div>
                <form:select items="${inputCountriesList}" cssClass="field" path="first_country_23" /></td>
        </tr>
        <tr>
            <td><form:label path="typevisa_24" cssClass="sign">24. Виза запрашивается для  </form:label><br/>
                <div class="errors"> <form:errors path="typevisa_24" /></div>
                <form:radiobuttons delimiter="<br>" items="${qtyList}" path="typevisa_24" /></td>
            <td><form:label path="lenvisa_25" cssClass="sign">25. Продолжительность пребывания или транзита. Указать количество дней </form:label><br/>
                <div class="errors"> <form:errors path="lenvisa_25" /></div>
                Запрашивается виза на <form:input path="lenvisa_25" cssClass="field" />дней (&lt;=90) </td>
        </tr>
        <tr>
            <td><form:label path="startvisa_29" cssClass="sign">29. Предполагаемая дата въезда в шенгенскую зону (год-месяц-день)</form:label><br/>
                <div class="errors"> <form:errors path="startvisa_29" /></div>
                <form:input cssClass="datepicker field" path="startvisa_29" /></td>
            <td><form:label path="endvisa_30" cssClass="sign">30. Предполагаемая дата выезда из шенгенской зоны (год-месяц-день)</form:label><br/>
                <div class="errors"> <form:errors path="endvisa_30" /></div>
                <form:input cssClass="datepicker field" path="endvisa_30" /></td>
        </tr>
        <tr>
            <td colspan="2"><b>26. Шенгенские визы, выданные за последние три года</b></td>
        </tr>
        <tr>
            <td>
                <b>от:</b>
                <div class="errors"> <form:errors path="prevvisastart1_26" /></div>
                <form:input cssClass="datepicker field" path="prevvisastart1_26" /></td>
            <td>
                <b>до:</b>
                <div class="errors"> <form:errors path="prevvisaend1_26" /></div>
                <form:input cssClass="datepicker field" path="prevvisaend1_26" /></td>
           
        </tr>
        <tr>
            <td>
                <div class="errors"> <form:errors path="prevvisastart2_26" /></div>
                <form:input cssClass="datepicker field" path="prevvisastart2_26" /></td>
            <td>
                <div class="errors"> <form:errors path="prevvisaend2_26" /></div>
                <form:input cssClass="datepicker field" path="prevvisaend2_26" /></td>

        </tr>
        <tr>
            <td>
                <div class="errors"> <form:errors path="prevvisastart3_26" /></div>
                <form:input cssClass="datepicker field" path="prevvisastart3_26" /></td>
            <td>
                <div class="errors"> <form:errors path="prevvisaend3_26" /></div>
                <form:input cssClass="datepicker field" path="prevvisaend3_26" /></td>

        </tr>
    </table>
</div>

<div class="box">
    <!-- Box Head -->
    <div class="box-head">
        <h2>Данные принимающего лица</h2>
    </div>
    <table>
        <tr>
            <td colspan="2"><form:label path="invite_31" cssClass="sign">Вид</form:label><br/>
                <div class="errors"> <form:errors path="invite_31" /></div>
                <form:radiobuttons delimiter="<br>" items="${invList}" path="invite_31" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="title_31" cssClass="sign">Название </form:label><br/>
                <div class="errors"> <form:errors path="title_31" /></div>
                <form:input path="title_31" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="name_31" cssClass="sign">Имя </form:label><br/>
                <div class="errors"> <form:errors path="name_31" /></div>
                <form:input path="name_31" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="surname_31" cssClass="sign">Фамилия </form:label><br/>
                <div class="errors"> <form:errors path="surname_31" /></div>
                <form:input path="surname_31" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="country_31" cssClass="sign">Государство </form:label><br/>
                <div class="errors"> <form:errors path="country_31" /></div>
                <form:select items="${countiresList}" cssClass="field size1"  path="country_31" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="city_31" cssClass="sign">Место</form:label><br/>
                <div class="errors"> <form:errors path="city_31" /></div>
                <form:input path="city_31" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="index_31" cssClass="sign">Почтовый индекс</form:label><br/>
                <div class="errors"> <form:errors path="index_31" /></div>
                <form:input path="index_31" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="preftel_31" cssClass="sign">Префикс тел. </form:label><br/>
                <div class="errors"> <form:errors path="preftel_31" /></div>
                <form:input path="preftel_31" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="tel_31" cssClass="sign">Номер тел. </form:label><br/>
                <div class="errors"> <form:errors path="tel_31" /></div>
                <form:input path="tel_31" cssClass="field size1" /></td>
        </tr>
        
        <tr>
            <td colspan="2"><form:label path="preffax_31" cssClass="sign">Префикс факс. </form:label><br/>
                <div class="errors"> <form:errors path="preffax_31" /></div>
                <form:input path="preffax_31" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="fax_31" cssClass="sign">Номер факс. </form:label><br/>
                <div class="errors"> <form:errors path="fax_31" /></div>
                <form:input path="fax_31" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="address_31" cssClass="sign">Адрес </form:label><br/>
                <div class="errors"> <form:errors path="address_31" /></div>
                <form:input path="address_31" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="building_31" cssClass="sign">Номер дома </form:label><br/>
                <div class="errors"> <form:errors path="building_31" /></div>
                <form:input path="building_31" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="flat_31" cssClass="sign">Номер квартиры </form:label><br/>
                <div class="errors"> <form:errors path="flat_31" /></div>
                <form:input path="flat_31" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="email_31" cssClass="sign">Email </form:label><br/>
                <div class="errors"> <form:errors path="email_31" /></div>
                <form:input path="email_31" cssClass="field size1" /></td>
        </tr>
</table>
</div>

<div class="box">
    <!-- Box Head -->
    <div class="box-head">
        <h2>Данные лица, несущего расходы</h2>
    </div>
    <table>
        <tr>
            <td colspan="2"><form:label path="expencies_33" cssClass="sign">33. Расходы заявителя на проезд и во время пребывания оплачивает</form:label><br/>
                <div class="errors"> <form:errors path="expencies_33" /></div>
                <form:radiobuttons delimiter="<br>" items="${expenciesList}" path="expencies_33" /><br>
                <form:input path="expenciesother_33" cssClass="field size1" /></td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="money_type_33" cssClass="sign">Средства на покрытие расходов на пребывание: </form:label><br/>
                <div class="errors"> <form:errors path="money_type_33" /></div>
                <form:checkboxes delimiter="<br>" items="${moneyList}"  path="money_type_33" />
                <br>
                <form:input path="money_type_other_33" cssClass="field size1" />
            </td>
        </tr>
        <tr>
            <td colspan="2"><form:label path="inshurance_33" cssClass="sign">Страхование поездки / медицинское страхование. Действительно до (год-месяц-день) </form:label><br/>
                <div class="errors"> <form:errors path="inshurance_33" /></div>
                <form:input path="inshurance_33" cssClass="datepicker field" /></td>
        </tr>

    </table>
    <div class="buttons">  <input type="submit" value="Сохранить" class="button" /> <c:if test="${not empty form.id}"><input type="button" id="copy" class="button" value="Скопировать в новую анкету" /></c:if>

    </div>
</div>
    
</form:form>   <br /><br /><br />
</body>