<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>autofillForms@blueimp.net	0.9.8.2	${form.passnum_13}	(?:^https:\/\/rejestracja\.by\.e-konsulat\.gov\.pl)

Ctl00$cp$f$daneOs$txtNazwisko	${form.surname_1}	(?:^ctl00\\$cp\\$f\\$daneOs\\$txtNazwisko$)	(?:)	true	true
Ctl00$cp$f$daneOs$txtNazwiskoRodowe	${form.surname_2}	(?:^ctl00\\$cp\\$f\\$daneOs\\$txtNazwiskoRodowe$)	(?:)	true	true
Ctl00$cp$f$daneOs$txtImiona	${form.name_3}	(?:^ctl00\\$cp\\$f\\$daneOs\\$txtImiona$)	(?:)	true	true
Ctl00$cp$f$daneOs$txtDataUrodzin	${form.birthdate_4}	(?:^ctl00\\$cp\\$f\\$daneOs\\$txtDataUrodzin$)	(?:)	true	true
Ctl00$cp$f$daneOs$txtMiejsceUrodzenia	${form.placedate_5}	(?:^ctl00\\$cp\\$f\\$daneOs\\$txtMiejsceUrodzenia$)	(?:)	true	true
Ctl00$cp$f$daneOs$cbKrajUrodzenia	(?:^${form.country_6}$)	(?:^ctl00\\$cp\\$f\\$daneOs\\$cbKrajUrodzenia$)	(?:)	true	true
Ctl00$cp$f$daneOs$cbObecneObywatelstwo	(?:^${form.citizenship_7}$)	(?:^ctl00\\$cp\\$f\\$daneOs\\$cbObecneObywatelstwo$)	(?:)	true	true
Ctl00$cp$f$daneOs$cbPosiadaneObywatelstwo	(?:^${form.citizenship_born_8}$)	(?:^ctl00\\$cp\\$f\\$daneOs\\$cbPosiadaneObywatelstwo$)	(?:)	true	true
женщина	(?:^${form.sex_9}$)	(?:^ctl00\\$cp\\$f\\$daneOs\\$rbPlec$)	(?:)	true	true
Вдовец/вдова	(?:^${form.family_10}$)	(?:^ctl00\\$cp\\$f\\$daneOs\\$rbStanCywilny$)	(?:)	true	true
Ctl00$cp$f$txt5NumerDowodu	${form.identnum_11}	(?:^ctl00\\$cp\\$f\\$txt5NumerDowodu$)	(?:)	true	true
Обычный паспорт	(?:^${form.passdata_12}$)	(?:^ctl00\\$cp\\$f\\$rbl13$)	(?:)	true	true
Ctl00$cp$f$txt14NumerPaszportu	${form.passnum_13}	(?:^ctl00\\$cp\\$f\\$txt14NumerPaszportu$)	(?:)	true	true
Ctl00$cp$f$txt16WydanyDnia	${form.passissuedate_14}	(?:^ctl00\\$cp\\$f\\$txt16WydanyDnia$)	(?:)	true	true
Ctl00$cp$f$txt17WaznyDo	${form.passexpiration_15}	(?:^ctl00\\$cp\\$f\\$txt17WaznyDo$)	(?:)	true	true
Ctl00$cp$f$txt15WydanyPrzez	${form.passby_16}	(?:^ctl00\\$cp\\$f\\$txt15WydanyPrzez$)	(?:)	true	true
<c:choose><c:when test="${not form.is_children}">Ctl00$cp$f$opiekunowie$chkNieDotyczy	(?:^on$)	(?:^ctl00\\$cp\\$f\\$opiekunowie\\$chkNieDotyczy$)	(?:)	false	true
Ctl00$cp$f$opiekunowie$cbObywatelstwo1	(?:^${form.citizenship_child}$)	(?:^ctl00\\$cp\\$f\\$opiekunowie\\$cbObywatelstwo1$)	(?:)	true	true
Ctl00$cp$f$opiekunowie$txtImie1	${form.name_child}	(?:^ctl00\\$cp\\$f\\$opiekunowie\\$txtImie1$)	(?:)	true	true
Ctl00$cp$f$opiekunowie$txtNazwisko1	${form.surname_child}	(?:^ctl00\\$cp\\$f\\$opiekunowie\\$txtNazwisko1$)	(?:)	true	true
Ctl00$cp$f$opiekunowie$cbPanstwo1	(?:^${form.country_child}$)	(?:^ctl00\\$cp\\$f\\$opiekunowie\\$cbPanstwo1$)	(?:)	true	true
Ctl00$cp$f$opiekunowie$txtStanProwincja1	${form.state_child}	(?:^ctl00\\$cp\\$f\\$opiekunowie\\$txtStanProwincja1$)	(?:)	true	true
Ctl00$cp$f$opiekunowie$txtMiejscowosc1	${form.city_child}	(?:^ctl00\\$cp\\$f\\$opiekunowie\\$txtMiejscowosc1$)	(?:)	true	true
Ctl00$cp$f$opiekunowie$txtKod1	${form.index_child}	(?:^ctl00\\$cp\\$f\\$opiekunowie\\$txtKod1$)	(?:)	true	true
Ctl00$cp$f$opiekunowie$txtAdres1	${form.address_child}	(?:^ctl00\\$cp\\$f\\$opiekunowie\\$txtAdres1$)	(?:)	true	true
Ctl00$cp$f$opiekunowie$cbObywatelstwo2	(?:^$)	(?:^ctl00\\$cp\\$f\\$opiekunowie\\$cbObywatelstwo2$)	(?:)	true	true
Ctl00$cp$f$opiekunowie$txtImie2		(?:^ctl00\\$cp\\$f\\$opiekunowie\\$txtImie2$)	(?:)	true	true
Ctl00$cp$f$opiekunowie$txtNazwisko2		(?:^ctl00\\$cp\\$f\\$opiekunowie\\$txtNazwisko2$)	(?:)	true	true
Ctl00$cp$f$opiekunowie$cbPanstwo2	(?:^$)	(?:^ctl00\\$cp\\$f\\$opiekunowie\\$cbPanstwo2$)	(?:)	true	true
Ctl00$cp$f$opiekunowie$txtStanProwincja2		(?:^ctl00\\$cp\\$f\\$opiekunowie\\$txtStanProwincja2$)	(?:)	true	true
Ctl00$cp$f$opiekunowie$txtMiejscowosc2		(?:^ctl00\\$cp\\$f\\$opiekunowie\\$txtMiejscowosc2$)	(?:)	true	true
Ctl00$cp$f$opiekunowie$txtKod2		(?:^ctl00\\$cp\\$f\\$opiekunowie\\$txtKod2$)	(?:)	true	true
Ctl00$cp$f$opiekunowie$txtAdres2		(?:^ctl00\\$cp\\$f\\$opiekunowie\\$txtAdres2$)	(?:)	true	true
</c:when><c:otherwise>Ctl00$cp$f$opiekunowie$chkNieDotyczy	(?:^on$)	(?:^ctl00\\$cp\\$f\\$opiekunowie\\$chkNieDotyczy$)	(?:)	true	true</c:otherwise></c:choose>
Ctl00$cp$f$ddl45Panstwo	(?:^${form.country_17}$)	(?:^ctl00\\$cp\\$f\\$ddl45Panstwo$)	(?:)	true	true
Ctl00$cp$f$txt45StanProwincja	${form.state_17}	(?:^ctl00\\$cp\\$f\\$txt45StanProwincja$)	(?:)	true	true
Ctl00$cp$f$txt45Miejscowosc	${form.city_17}	(?:^ctl00\\$cp\\$f\\$txt45Miejscowosc$)	(?:)	true	true
Ctl00$cp$f$txt45Kod	${form.index_17}	(?:^ctl00\\$cp\\$f\\$txt45Kod$)	(?:)	true	true
Ctl00$cp$f$txt45Adres	${form.address_17}	(?:^ctl00\\$cp\\$f\\$txt45Adres$)	(?:)	true	true
Ctl00$cp$f$txt17Email	${form.email_17}	(?:^ctl00\\$cp\\$f\\$txt17Email$)	(?:)	true	true
Ctl00$cp$f$txt46TelefonPrefiks0	${form.preftel_17}	(?:^ctl00\\$cp\\$f\\$txt46TelefonPrefiks0$)	(?:)	true	true
Ctl00$cp$f$txt46TelefonNumer0	${form.tel_17}	(?:^ctl00\\$cp\\$f\\$txt46TelefonNumer0$)	(?:)	true	true
<c:choose><c:when test="${form.countryvisitor_18 == 'Tak'}">Да. Вид на жительство или равноценный документ	(?:^${form.countryvisitor_18}$)	(?:^ctl00\\$cp\\$f\\$rbl18$)	(?:)	true	true
Ctl00$cp$f$txt18aNumer	${form.visitdoc_18}	(?:^ctl00\\$cp\\$f\\$txt18aNumer$)	(?:)	true	true
Ctl00$cp$f$txt18bDataWaznosci	${form.expdate_18}	(?:^ctl00\\$cp\\$f\\$txt18bDataWaznosci$)	(?:)	true	true
Ctl00$cp$f$chk18Bezterminowo	(?:^on$)	(?:^ctl00\\$cp\\$f\\$chk18Bezterminowo$)	(?:)	false	true
</c:when><c:otherwise>Нет	(?:^Nie$)	(?:^ctl00\$cp\$f\$rbl18$)	(?:)	true	true</c:otherwise></c:choose>
Ctl00$cp$f$ddl19WykonywanyZawod	(?:^${form.profession_19}$)	(?:^ctl00\\$cp\\$f\\$ddl19WykonywanyZawod$)	(?:)	true	true
Работодатель	(?:^${form.employee_20}$)	(?:^ctl00\\$cp\\$f\\$rbl20$)	(?:)	true	true
Ctl00$cp$f$dd20bPanstwo	(?:^${form.country_20}$)	(?:^ctl00\\$cp\\$f\\$dd20bPanstwo$)	(?:)	true	true
Ctl00$cp$f$txt20cStanProwincja	${form.state_20}	(?:^ctl00\\$cp\\$f\\$txt20cStanProwincja$)	(?:)	true	true
Ctl00$cp$f$txt20dMiejscowosc	${form.city_20}	(?:^ctl00\\$cp\\$f\\$txt20dMiejscowosc$)	(?:)	true	true
Ctl00$cp$f$txt20eKodPocztowy	${form.index_20}	(?:^ctl00\\$cp\\$f\\$txt20eKodPocztowy$)	(?:)	true	true
Ctl00$cp$f$txt20fAdres	${form.address_20}	(?:^ctl00\\$cp\\$f\\$txt20fAdres$)	(?:)	true	true
Ctl00$cp$f$txt20gPrefix	${form.preftel_20}	(?:^ctl00\\$cp\\$f\\$txt20gPrefix$)	(?:)	true	true
Ctl00$cp$f$txt20hTelefon	${form.tel_20}	(?:^ctl00\\$cp\\$f\\$txt20hTelefon$)	(?:)	true	true
Ctl00$cp$f$txt20Nazwa	${form.title_20}	(?:^ctl00\\$cp\\$f\\$txt20Nazwa$)	(?:)	true	true
Ctl00$cp$f$txt20Email	${form.email_20}	(?:^ctl00\\$cp\\$f\\$txt20Email$)	(?:)	true	true
Ctl00$cp$f$txt20PrefiksFax	${form.preffax_20}	(?:^ctl00\\$cp\\$f\\$txt20PrefiksFax$)	(?:)	true	true
Ctl00$cp$f$txt20NumerFax	${form.fax_20}	(?:^ctl00\\$cp\\$f\\$txt20NumerFax$)	(?:)	true	true
Туризм	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rbl29\\$0$)	(?:)	false	true
Деловая	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rbl29\\$1$)	(?:)	false	true
Посещение родственников или друзей	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rbl29\\$2$)	(?:)	false	true
Культура	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rbl29\\$3$)	(?:)	false	true
Спорт	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rbl29\\$4$)	(?:)	false	true
Официальная	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rbl29\\$5$)	(?:)	false	true
Лечение	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rbl29\\$6$)	(?:)	false	true
Учеба	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rbl29\\$7$)	(?:)	false	true
Транзит	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rbl29\\$8$)	(?:)	false	true
Транзит ч. аэропорт	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rbl29\\$9$)	(?:)	false	true
Иная (указать)	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rbl29\\$10$)	(?:)	true	true
Ctl00$cp$f$txt29CelPodrozy	${form.goalother_21}	(?:^ctl00\\$cp\\$f\\$txt29CelPodrozy$)	(?:)	true	true
Ctl00$cp$f$ddl21KrajDocelowy	(?:^${form.dest_country_22}$)	(?:^ctl00\\$cp\\$f\\$ddl21KrajDocelowy$)	(?:)	true	true
Ctl00$cp$f$ddl23PierwszyWjazd	(?:^${form.first_country_23}$)	(?:^ctl00\\$cp\\$f\\$ddl23PierwszyWjazd$)	(?:)	true	true
Многократного  въезда	(?:^${form.typevisa_24}$)	(?:^ctl00\\$cp\\$f\\$rbl24$)	(?:)	true	true
Ctl00$cp$f$txt25OkresPobytu	${form.lenvisa_25}	(?:^ctl00\\$cp\\$f\\$txt25OkresPobytu$)	(?:)	true	true
Ctl00$cp$f$txt30DataWjazdu	${form.startvisa_29}	(?:^ctl00\\$cp\\$f\\$txt30DataWjazdu$)	(?:)	true	true
Ctl00$cp$f$txt31DataWyjazdu	${form.endvisa_30}	(?:^ctl00\\$cp\\$f\\$txt31DataWyjazdu$)	(?:)	true	true
<c:choose><c:when test="${not empty form.prevvisastart1_26}">Да. Срок действия  (год-месяц-день)	(?:^Tak$)	(?:^ctl00\\$cp\\$f\\$rbl26$)	(?:)	true	true
PoprzednieWizy_0_txtDataOd	${form.prevvisastart1_26}	(?:^PoprzednieWizy_0_txtDataOd$)	(?:)	true	true
PoprzednieWizy_0_txtDataDo	${form.prevvisaend1_26}	(?:^PoprzednieWizy_0_txtDataDo$)	(?:)	true	true
PoprzednieWizy_1_txtDataOd	${form.prevvisastart2_26}	(?:^PoprzednieWizy_1_txtDataOd$)	(?:)	true	true
PoprzednieWizy_1_txtDataDo	${form.prevvisaend2_26}	(?:^PoprzednieWizy_1_txtDataDo$)	(?:)	true	true
PoprzednieWizy_2_txtDataOd	${form.prevvisastart3_26}	(?:^PoprzednieWizy_2_txtDataOd$)	(?:)	true	true
PoprzednieWizy_2_txtDataDo	${form.prevvisaend3_26}	(?:^PoprzednieWizy_2_txtDataDo$)	(?:)	true	true
</c:when><c:otherwise>Да. Срок действия  (год-месяц-день)	(?:^Nie$)	(?:^ctl00\\$cp\\$f\\$rbl26$)	(?:)	false	true</c:otherwise></c:choose>Нет	(?:^Nie$)	(?:^ctl00\\$cp\\$f\\$rbl27$)	(?:)	true	true
Ctl00$cp$f$chkNiedotyczy28	(?:^on$)	(?:^ctl00\\$cp\\$f\\$chkNiedotyczy28$)	(?:)	true	true
фирма	(?:^${form.invite_31}$)	(?:^ctl00\\$cp\\$f\\$ctrl31_\\$rbl34$)	(?:)	true	true
Ctl00$cp$f$ctrl31_$txt34Nazwa	${form.title_31}	(?:^ctl00\\$cp\\$f\\$ctrl31_\\$txt34Nazwa$)	(?:)	true	true
Ctl00$cp$f$ctrl31_$ddl34panstwo	(?:^${form.country_31}$)	(?:^ctl00\\$cp\\$f\\$ctrl31_\\$ddl34panstwo$)	(?:)	true	true
Ctl00$cp$f$ctrl31_$txt34miejscowosc	${form.city_31}	(?:^ctl00\\$cp\\$f\\$ctrl31_\\$txt34miejscowosc$)	(?:)	true	true
Ctl00$cp$f$ctrl31_$txt34kod	${form.index_31}	(?:^ctl00\\$cp\\$f\\$ctrl31_\\$txt34kod$)	(?:)	true	true
Ctl00$cp$f$ctrl31_$txt34prefikstel	${form.preftel_31}	(?:^ctl00\\$cp\\$f\\$ctrl31_\\$txt34prefikstel$)	(?:)	true	true
Ctl00$cp$f$ctrl31_$txt34tel	${form.tel_31}	(?:^ctl00\\$cp\\$f\\$ctrl31_\\$txt34tel$)	(?:)	true	true
Ctl00$cp$f$ctrl31_$txt34prefiksfax	${form.preffax_31}	(?:^ctl00\\$cp\\$f\\$ctrl31_\\$txt34prefiksfax$)	(?:)	true	true
Ctl00$cp$f$ctrl31_$txt34fax	${form.fax_31}	(?:^ctl00\\$cp\\$f\\$ctrl31_\\$txt34fax$)	(?:)	true	true
Ctl00$cp$f$ctrl31_$txt34adres	${form.address_31}	(?:^ctl00\\$cp\\$f\\$ctrl31_\\$txt34adres$)	(?:)	true	true
Ctl00$cp$f$ctrl31_$txt34NumerDomu	${form.building_31}	(?:^ctl00\\$cp\\$f\\$ctrl31_\\$txt34NumerDomu$)	(?:)	true	true
Ctl00$cp$f$ctrl31_$txt34NumerLokalu	${form.flat_31}	(?:^ctl00\\$cp\\$f\\$ctrl31_\\$txt34NumerLokalu$)	(?:)	true	true
Ctl00$cp$f$ctrl31_$txt34Email	${form.email_31}	(?:^ctl00\\$cp\\$f\\$ctrl31_\\$txt34Email$)	(?:)	true	true
Сам заявитель	(?:^1$)	(?:^ctl00\\$cp\\$f\\$rbl35$)	(?:)	true	true
Наличные деньги	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rb36Gotowka$)	(?:)	true	true
Дорожные чеки	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rb36Czeki$)	(?:)	false	true
Кредитная карточка	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rb36Karty$)	(?:)	true	true
Размещение	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rb36Zakwaterowanie$)	(?:)	false	true
Предоплачен транспорт	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rb36Transport$)	(?:)	false	true
Иные (указать)	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rb36Inne$)	(?:)	false	true
Страхование поездки / медицинское страхование. Действительно до  (год-месяц-день)	(?:^on$)	(?:^ctl00\\$cp\\$f\\$rb36Ubezpieczenie$)	(?:)	false	true
Ctl00$cp$f$chkNieDotyczy43	(?:^on$)	(?:^ctl00\\$cp\\$f\\$chkNieDotyczy43$)	(?:)	true	true
Ctl00$cp$f$txt43Nazwisko		(?:^ctl00\\$cp\\$f\\$txt43Nazwisko$)	(?:)	true	true
Ctl00$cp$f$txt43Imie		(?:^ctl00\\$cp\\$f\\$txt43Imie$)	(?:)	true	true
Ctl00$cp$f$txt43DataUrodzenia		(?:^ctl00\\$cp\\$f\\$txt43DataUrodzenia$)	(?:)	true	true
Ctl00$cp$f$txt43Paszport		(?:^ctl00\\$cp\\$f\\$txt43Paszport$)	(?:)	true	true
Ctl00$cp$f$ddl43Obywatelstwo	(?:^$)	(?:^ctl00\\$cp\\$f\\$ddl43Obywatelstwo$)	(?:)	true	true
Я информирован, что в случае отказа в получении визы визовый сбор не возвращается.	(?:^on$)	(?:^ctl00\\$cp\\$f\\$chk44Oswiadczenie1$)	(?:)	true	true
Применяется, если запрашивается виза на многократный въезд (см. пункт 24):Я информирован, что для первого моего пребывания и последующих посещений территории стран-участников требуется соответствующая медицинская страховка.	(?:^on$)	(?:^ctl00\\$cp\\$f\\$chk44Oswiadczenie2$)	(?:)	true	true
Я информирован/-а и согласен/-на с тем, что предоставление мною моих личных данных, востребованных в настоящей анкете, фотографирование и, в случае необходимости, снятие отпечатков пальцев является обязательным для рассмотрения визовой заявки; все личные данные, относящиеся ко мне и предоставленные в визовой анкете, будут переданы компетентным органам государств-участников Шенгенского соглашения и будут ими обработаны для принятия решения по моему заявлению.Эти данные, как и данные о решении, принятом по моему заявлению, или о решении аннулировать, отменить или продлить уже выданную визу, будут введены и сохранены в Визовой информационной системе (VIS)  на максимальный срок пять лет и в этот период будут доступны государственным учреждениям и службам, в компетенцию которых входит производить проверку виз на внешних границах шенгенской зоны и в ее странах-участниках, а также иммиграционным службам и учреждениям, предоставляющим убежище, с целью удостовериться, соблюдаются ли требования по законному въезду, пребыванию и проживанию на территории стран-участников, а также для опознания лиц, которые не соответствуют  или перестали соответствовать этим требованиям, для рассмотрения прошений о предоставлении убежища и определения ответственности за подобное рассмотрение.На некоторых условиях данные будут доступны также определенным службам государств-участников и Европолу для предотвращения, раскрытия и расследования правонарушений, связанных с терроризмом, и других тяжких преступлений. Государственным учреждениям, ответственным за обработку данных, является: Управление по делам иностранцев, ул. Кошикова, 16, 00-564, Варшава.Мне известно, что в любом государстве-участнике я имею право получить уведомление о данных, касающихся меня и введенных в (VIS) и о государстве-участнике, предоставившем такие данные, а также требовать исправления неверных данных, касающихся меня, и удаления моих личных данных, обработанных противозаконно. По моему особому запросу учреждение, оформляющее мое заявление, сообщит мне о способе осуществления моего права на проверку личных данных обо мне, а также на исправление или удаление данных в порядке, установленном национальным законодательством соответствующего государства. Жалобы по защите личных данных будут рассматриваться национальным надзорным органом этого государства-участника: Генеральный инспектор защиты личных данных, ул. Ставки, 2, 00-193, Варшава.Я заверяю, что все данные, добросовестно указанные мною в анкете, являются правильными и полными. Мне известно, что ложные данные могут стать причиной отказа или аннулирования уже выданной визы, а также повлечь за собой уголовное преследование в соответствии с законодательством того государства-участника Шенгенского соглашения, которое оформляет мою визовую анкету.Если виза будет выдана, я обязуюсь покинуть территорию государств-членов Шенгенского соглашения по истечении срока  действия визы.Я информирован/-а о том, что наличие визы является лишь одним из условий, необходимых для въезда на европейскую территорию государств-участников Шенгенского соглашения. Сам факт предоставления визы не дает права на получение  компенсации в случае невыполнения мною требований пункта 1 статьи 5 Регламента (ЕК) № 562/2006 (Шенгенского кодекса о границах), вследствие чего мне могут отказать во въезде в страну. При въезде на европейскую территорию государств-участников Шенгенского соглашения вновь проверяется наличие необходимых на то предпосылок	(?:^on$)	(?:^ctl00\\$cp\\$f\\$chk44Oswiadczenie3$)	(?:)	true	true