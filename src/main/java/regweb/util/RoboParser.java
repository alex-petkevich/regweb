package regweb.util;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import regweb.constants.Lists;
import regweb.domain.Form;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by alex on 11/30/14.
 */
public class RoboParser {
    public List<Form> parseHTML(InputStream text) throws IOException {
        List<Form> result = new ArrayList<Form>();

        Document doc = Jsoup.parse(text, "UTF-16", "");
        Elements tables = doc.getElementsByClass("orph");

        for (Element table : tables) {
            Elements inner = table.getElementsByTag("table");
            Element caption = inner.first();
            Element tbl = inner.last();
            Elements rows = tbl.getElementsByTag("tr");
            Form currentForm = new Form();

            if (caption.getElementsByClass("caption").size() > 0) {
                currentForm.setFilename(cleanString(caption.getElementsByClass("caption").first().text()));
            }


            currentForm.setSurname_1(getColumnValue("txtnazwisko", rows));
            currentForm.setSurname_2(getColumnValue("txtnazwiskorodowe", rows));


            currentForm.setName_3(getColumnValue("txtimiona", rows));
            currentForm.setBirthdate_4(getColumnValue("txtdataurodzin", rows));
            currentForm.setPlacedate_5(getColumnValue("txtmiejsceurodzenia", rows));
            currentForm.setCountry_6(Lists.getKeyByValue(Lists.countriesList, getColumnValue("cbkrajurodzenia", rows)));
            currentForm.setCitizenship_7(Lists.getKeyByValue(Lists.countriesList, getColumnValue("cbobecneobywatelstwo", rows)));
            currentForm.setCitizenship_born_8(Lists.getKeyByValue(Lists.countriesList, getColumnValue("cbposiadaneobywatelstwo", rows)));
            currentForm.setSex_9(getColumnKeyPart("rbplec", rows));
            currentForm.setFamily_10(getColumnKeyPart("rbstancywilny", rows));
            currentForm.setIdentnum_11(getColumnValue("txt5numerdowodu", rows));
            currentForm.setPassdata_12(getColumnKeyPart("rbl13", rows));
            currentForm.setPassdata_12_other(getColumnValue("txt13rodzaj", rows));
            currentForm.setPassnum_13(getColumnValue("txt14numerpaszportu", rows));
            currentForm.setPassissuedate_14(getColumnValue("txt16wydanydnia", rows));
            currentForm.setPassexpiration_15(getColumnValue("txt17waznydo", rows));
            currentForm.setPassby_16(getColumnValue("txt15wydanyprzez", rows));
            currentForm.setCountry_17(Lists.getKeyByValue(Lists.countriesList, getColumnValue("ddl45panstwo", rows)));
            currentForm.setState_17(getColumnValue("txt45stanprowincja", rows));
            currentForm.setCity_17(getColumnValue("txt45miejscowosc", rows));
            currentForm.setIndex_17(getColumnValue("txt45kod", rows));
            currentForm.setAddress_17(getColumnValue("txt45adres", rows));
            currentForm.setEmail_17(getColumnValue("txt17email", rows));
            currentForm.setPreftel_17(getColumnValue("txt46telefonprefiks0", rows));
            currentForm.setTel_17(getColumnValue("txt46telefonnumer0", rows));
            if (getColumnValue("chkniedotyczy", rows).equals("0")) {
                currentForm.setIs_children(true);
                currentForm.setCountry_child(Lists.getKeyByValue(Lists.countriesList, getColumnValue("cbpanstwo1", rows)));
                currentForm.setCitizenship_child(Lists.getKeyByValue(Lists.countriesList, getColumnValue("cbobywatelstwo1", rows)));
                currentForm.setName_child(getColumnValue("txtimie1", rows));
                currentForm.setSurname_child(getColumnValue("txtnazwisko1", rows));
                currentForm.setState_child(getColumnValue("txtstanprowincja1", rows));
                currentForm.setCity_child(getColumnValue("txtmiejscowosc1", rows));
                currentForm.setIndex_child(getColumnValue("txtkod1", rows));
                currentForm.setAddress_child(getColumnValue("txtadres1", rows));

                currentForm.setCountry_child2(Lists.getKeyByValue(Lists.countriesList, getColumnValue("cbpanstwo2", rows)));
                currentForm.setCitizenship_child2(Lists.getKeyByValue(Lists.countriesList, getColumnValue("cbobywatelstwo2", rows)));
                currentForm.setName_child2(getColumnValue("txtimie2", rows));
                currentForm.setSurname_child2(getColumnValue("txtnazwisko2", rows));
                currentForm.setState_child2(getColumnValue("txtstanprowincja2", rows));
                currentForm.setCity_child2(getColumnValue("txtmiejscowosc2", rows));
                currentForm.setIndex_child2(getColumnValue("txtkod2", rows));
                currentForm.setAddress_child2(getColumnValue("txtadres2", rows));

            } else {
                currentForm.setIs_children(false);
            }
            if (getColumnKeyPart("rbl18", rows).equals("Tak")) {
                currentForm.setCountryvisitor_18("Tak");
                currentForm.setVisitdoc_18(getColumnValue("txt18anumer", rows));
                currentForm.setExpdate_18(getColumnValue("txt18bdatawaznosci", rows));
                if (getColumnValue("chk18bezterminowo", rows).equals("0")) {
                    currentForm.setExpdate_18_unlimited(false);
                } else {
                    currentForm.setExpdate_18_unlimited(true);
                }
            } else {
                currentForm.setCountryvisitor_18("Nie");
            }
            currentForm.setProfession_19(Lists.getKeyByValue(Lists.professionList, getColumnValue("ddl19wykonywanyzawod", rows)));
            currentForm.setEmployee_20(getColumnKeyPart("rbl20", rows));
            currentForm.setCountry_20(Lists
                    .getKeyByValue(Lists.countriesList, getColumnValue("dd20bpanstwo", rows)));
            currentForm.setState_20(getColumnValue("txt20cstanprowincja", rows));
            currentForm.setCity_20(getColumnValue("txt20dmiejscowosc", rows));
            currentForm.setIndex_20(getColumnValue("txt20ekodpocztowy", rows));
            currentForm.setAddress_20(getColumnValue("txt20fadres", rows));
            currentForm.setPreftel_20(getColumnValue("txt20gprefix", rows));
            currentForm.setTel_20(getColumnValue("txt20htelefon", rows));
            currentForm.setPreffax_20(getColumnValue("txt20prefiksfax", rows));
            currentForm.setFax_20(getColumnValue("txt20numerfax", rows));
            currentForm.setTitle_20(getColumnValue("txt20nazwa", rows));
            currentForm.setEmail_20(getColumnValue("txt20email", rows));
            List<String> goals = new ArrayList<String>();
            if (getColumnValue("0:", rows).equals("*")) {
                goals.add("Туризм");
            }
            if (getColumnValue("1:", rows).equals("*")) {
                goals.add("Деловая");
            }
            if (getColumnValue("2:", rows).equals("*")) {
                goals.add("Посещение родственников или друзей");
            }
            if (getColumnValue("3:", rows).equals("*")) {
                goals.add("Культура");
            }
            if (getColumnValue("4:", rows).equals("*")) {
                goals.add("Спорт");
            }
            if (getColumnValue("5:", rows).equals("*")) {
                goals.add("Официальная");
            }
            if (getColumnValue("6:", rows).equals("*")) {
                goals.add("Лечение");
            }
            if (getColumnValue("7:", rows).equals("*")) {
                goals.add("Учеба");
            }
            if (getColumnValue("8:", rows).equals("*")) {
                goals.add("Транзит");
            }
            if (getColumnValue("9:", rows).equals("*")) {
                goals.add("Транзит ч. аэропорт");
            }
            if (getColumnValue("10:", rows).equals("*")) {
                goals.add("Иная (указать)");
            }

            currentForm.setGoal_21(goals);
            currentForm.setGoalother_21(getColumnValue("txt29celpodrozy", rows));
            currentForm.setDest_country_22(Lists
                    .getKeyByValue(Lists.inputCountriesList, getColumnValue("ddl21krajdocelowy", rows)));
            currentForm.setFirst_country_23(Lists
                    .getKeyByValue(Lists.inputCountriesList, getColumnValue("ddl23pierwszywjazd", rows)));
            currentForm.setTypevisa_24(getColumnKeyPart("rbl24", rows));
            currentForm.setLenvisa_25(getColumnValue("txt25okrespobytu", rows));
            currentForm.setPrevvisastart1_26(getColumnValue("poprzedniewizy_0_txtdataod", rows));
            currentForm.setPrevvisaend1_26(getColumnValue("poprzedniewizy_0_txtdatado", rows));
            currentForm.setPrevvisastart2_26(getColumnValue("poprzedniewizy_1_txtdataod", rows));
            currentForm.setPrevvisaend2_26(getColumnValue("poprzedniewizy_1_txtdatado", rows));
            currentForm.setPrevvisastart3_26(getColumnValue("poprzedniewizy_2_txtdataod", rows));
            currentForm.setPrevvisaend3_26(getColumnValue("poprzedniewizy_2_txtdatado", rows));
            currentForm.setFingerprint_27(getColumnKeyPart("rbl27", rows));
            currentForm.setEndcountrypermit_28(getColumnValue("chkniedotyczy28", rows));
            currentForm.setEndcountryby_28(getColumnValue("txt27wydaneprzez", rows));
            currentForm.setEndcountryfrom_28(getColumnValue("txt27wazneod", rows));
            currentForm.setEndcountryto_28(getColumnValue("txt27waznedo", rows));
            currentForm.setStartvisa_29(getColumnValue("txt30datawjazdu", rows));
            currentForm.setEndvisa_30(getColumnValue("txt31datawyjazdu", rows));
            currentForm.setInvite_31(getColumnKeyPart("rbl34", rows));
            currentForm.setTitle_31(getColumnValue("txt34nazwa", rows));
            currentForm.setName_31(getColumnValue("txt34imie", rows));
            currentForm.setSurname_31(getColumnValue("txt34nazwisko", rows));
            currentForm.setCountry_31(Lists
                    .getKeyByValue(Lists.inputCountriesList, getColumnValue("ddl34panstwo", rows)));
            currentForm.setCity_31(getColumnValue("txt34miejscowosc", rows));
            currentForm.setIndex_31(getColumnValue("txt34kod", rows));
            currentForm.setPreftel_31(getColumnValue("txt34prefikstel", rows));
            currentForm.setTel_31(getColumnValue("txt34tel", rows));
            currentForm.setPreffax_31(getColumnValue("txt34prefiksfax", rows));
            currentForm.setFax_31(getColumnValue("txt34fax", rows));

            currentForm.setAddress_31(getColumnValue("txt34adres", rows));
            currentForm.setBuilding_31(getColumnValue("txt34numerdomu", rows));
            currentForm.setFlat_31(getColumnValue("txt34numerlokalu", rows));
            currentForm.setEmail_31(getColumnValue("txt34email", rows));
            currentForm.setExpencies_33(getColumnKeyPart("rbl35", rows));
            currentForm.setExpenciesother_33(getColumnValue("txt35ktopokrywakoszty", rows));
            if (getColumnValue("lbl35a_okreslony", rows).equals("")) {
                currentForm.setExpencies_33_above(false);
            } else {
                currentForm.setExpencies_33_above(true);
            }
            if (getColumnValue("lbl35a_inny", rows).equals("")) {
                currentForm.setExpencies_33_other(false);
            } else {
                currentForm.setExpencies_33_other(true);
            }
            List<String> money_type = new ArrayList<String>();
            if (getColumnValue("rb36gotowka", rows).equals("*")) {
                money_type.add("Наличные деньги");
            }
            if (getColumnValue("rb36czeki", rows).equals("*")) {
                money_type.add("Дорожные чеки");
            }
            if (getColumnValue("rb36karty", rows).equals("*")) {
                money_type.add("Кредитная карточка");
            }
            if (getColumnValue("rb36zakwaterowanie", rows).equals("*")) {
                money_type.add("Размещение");
            }
            if (getColumnValue("rb36transport", rows).equals("*")) {
                money_type.add("Предоплачен транспорт");
            }
            if (getColumnValue("rb36pokrywakoszty", rows).equals("*")) {
                money_type.add("Обеспечиваются все расходы во время пребывания");
            }
            if (getColumnValue("rb36inne", rows).equals("*")) {
                money_type.add("Иные (указать)");
            }
            currentForm.setMoney_type_33(money_type);
            currentForm.setMoney_type_other_33(getColumnValue("txt36inne", rows));
            currentForm.setInshurance_33(getColumnValue("txt36waznedo", rows));
            currentForm.setPersonaldataes_34(getColumnValue("chkniedotyczy43", rows));
            currentForm.setPersonaldatasurname_34(getColumnValue("txt43nazwisko", rows));
            currentForm.setPersonaldataname_34(getColumnValue("txt43imie", rows));
            currentForm.setPersonaldatadate_34(getColumnValue("txt43dataurodzenia", rows));
            currentForm.setPersonaldatapass_34(getColumnValue("txt43paszport", rows));
            currentForm.setPersonaldatacitizen_34(Lists
                    .getKeyByValue(Lists.inputCountriesList, getColumnValue("ddl43obywatelstwo", rows)));
            currentForm.setPersonaldatarelation_34(getColumnKeyPart("rbl43", rows));

            result.add(currentForm);
        }

        return result;
    }

    private String getColumnValue(String name, Elements rows) {
        for (Element row : rows) {
            Elements cols = row.getElementsByTag("td");
            String firstCell = cleanString(cols.get(0).text());
            if (firstCell.startsWith(name) && cols.size() > 2) {
                return cleanString(cols.get(2).text());
            }
        }
        return "";
    }

    private String cleanString(String str) {

        return Jsoup.parse(str.replaceAll("[^A-Za-z0-9А-Яа-я\\.\\,\\-\\_\\&\\*@\\!\\(\\)\\+=:;\\\"\\\'\\?\\s]", "")).text();
    }

    private String getColumnKeyPart(String name, Elements rows) {
        for (Element row : rows) {
            Elements cols = row.getElementsByTag("td");
            String firstCell = cleanString(cols.get(0).text());
            if (firstCell.startsWith(name) && cols.size() > 2) {
                String[] parts = firstCell.split(":");
                if (parts.length > 1) {
                    return parts[1];
                } else {
                    return "";
                }
            }
        }
        return "";
    }

}
