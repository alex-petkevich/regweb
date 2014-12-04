package regweb.util;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import regweb.domain.Form;
import regweb.ConstLists;

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

    Document doc = Jsoup.parse(text,"UTF-8","");
    Elements tables = doc.getElementsByTag("table");

    for(Element table : tables) {
      Form currentForm = new Form();

      Elements rows = table.getElementsByTag("tr");

      currentForm.setSurname_1(getColumnValue("ctl00$cp$f$daneos$txtnazwisko",rows));
      currentForm.setSurname_2(getColumnValue("ctl00$cp$f$daneos$txtnazwiskorodowe", rows));

      currentForm.setName_3(getColumnValue("ctl00$cp$f$daneos$txtimiona", rows));
      currentForm.setBirthdate_4(getColumnValue("ctl00$cp$f$daneos$txtdataurodzin", rows));
      currentForm.setPlacedate_5(getColumnValue("ctl00$cp$f$daneos$txtmiejsceurodzenia", rows));
      currentForm.setCountry_6(ConstLists.getKeyByValue(ConstLists.countriesList,  getColumnValue("ctl00$cp$f$daneos$cbkrajurodzenia", rows)));
      currentForm.setCitizenship_7(ConstLists.getKeyByValue(ConstLists.countriesList,  getColumnValue("ctl00$cp$f$daneos$cbobecneobywatelstwo", rows)));
      currentForm.setCitizenship_born_8(ConstLists.getKeyByValue(ConstLists.countriesList,  getColumnValue("ctl00$cp$f$daneos$cbposiadaneobywatelstwo", rows)));
      currentForm.setSex_9(getColumnKeyPart("ctl00$cp$f$daneos$rbplec", rows));
      currentForm.setFamily_10(getColumnKeyPart("ctl00$cp$f$daneos$rbstancywilny", rows));
      currentForm.setIdentnum_11(getColumnValue("ctl00$cp$f$txt5numerdowodu", rows));
      currentForm.setPassdata_12(getColumnKeyPart("ctl00$cp$f$rbl13", rows));
      currentForm.setPassnum_13(getColumnValue("ctl00$cp$f$txt14numerpaszportu", rows));
      currentForm.setPassissuedate_14(getColumnValue("ctl00$cp$f$txt16wydanydnia", rows));
      currentForm.setPassexpiration_15(getColumnValue("ctl00$cp$f$txt17waznydo", rows));
      currentForm.setPassby_16(getColumnValue("ctl00$cp$f$txt15wydanyprzez", rows));
      currentForm.setCountry_17(getColumnValue("ctl00$cp$f$ddl45panstwo", rows));
      currentForm.setState_17(getColumnValue("ctl00$cp$f$txt45stanprowincja", rows));
      currentForm.setCity_17(getColumnValue("ctl00$cp$f$txt45miejscowosc", rows));
      currentForm.setIndex_17(getColumnValue("ctl00$cp$f$txt45kod", rows));
      currentForm.setAddress_17(getColumnValue("ctl00$cp$f$txt45adres", rows));
      currentForm.setEmail_17(getColumnValue("ctl00$cp$f$txt17email", rows));
      currentForm.setPreftel_17(getColumnValue("ctl00$cp$f$txt46telefonprefiks0", rows));
      currentForm.setTel_17(getColumnValue("ctl00$cp$f$txt46telefonnumer0", rows));
      if (getColumnKeyPart("ctl00$cp$f$rbl18",rows).equals("Tak")) {
        currentForm.setCountryvisitor_18("Tak");
        currentForm.setVisitdoc_18(getColumnValue("ctl00$cp$f$txt18anumer", rows));
        currentForm.setExpdate_18(getColumnValue("ctl00$cp$f$txt18bdatawaznosci", rows));
      } else {
        currentForm.setCountryvisitor_18("Nie");
      }
      currentForm.setProfession_19(ConstLists.getKeyByValue(ConstLists.professionList,  getColumnValue("ctl00$cp$f$ddl19wykonywanyzawod", rows)));
      currentForm.setEmployee_20(getColumnKeyPart("ctl00$cp$f$rbl20", rows));
      currentForm.setCountry_20(ConstLists
          .getKeyByValue(ConstLists.countriesList, getColumnValue("ctl00$cp$f$dd20bpanstwo", rows)));
      currentForm.setState_20(getColumnValue("ctl00$cp$f$txt20cstanprowincja", rows));
      currentForm.setCity_20(getColumnValue("ctl00$cp$f$txt20dmiejscowosc", rows));
      currentForm.setIndex_20(getColumnValue("ctl00$cp$f$txt20ekodpocztowy", rows));
      currentForm.setAddress_20(getColumnValue("ctl00$cp$f$txt20fadres", rows));
      currentForm.setPreftel_20(getColumnValue("ctl00$cp$f$txt20gprefix", rows));
      currentForm.setTel_20(getColumnValue("ctl00$cp$f$txt20htelefon", rows));
      currentForm.setPreffax_20(getColumnValue("xxxxxxxxxxx", rows));
      currentForm.setFax_20(getColumnValue("xxxxxxxx", rows));
      currentForm.setTitle_20(getColumnValue("ctl00$cp$f$txt20nazwa", rows));
      currentForm.setEmail_20(getColumnValue("ctl00$cp$f$txt20email", rows));
      currentForm.setGoalother_21(getColumnValue("ctl00$cp$f$txt29celpodrozy", rows));
      currentForm.setDest_country_22(ConstLists
          .getKeyByValue(ConstLists.inputCountriesList, getColumnValue("ctl00$cp$f$ddl21krajdocelowy", rows)));
      currentForm.setFirst_country_23(ConstLists
          .getKeyByValue(ConstLists.inputCountriesList, getColumnValue("ctl00$cp$f$ddl23pierwszywjazd", rows)));
      currentForm.setTypevisa_24(getColumnKeyPart("ctl00$cp$f$rbl24", rows));
      currentForm.setLenvisa_25(getColumnValue("ctl00$cp$f$txt25okrespobytu", rows));
      currentForm.setPrevvisastart1_26(getColumnValue("poprzedniewizy_0_txtdataod", rows));
      currentForm.setPrevvisaend1_26(getColumnValue("poprzedniewizy_0_txtdatado", rows));
      currentForm.setPrevvisastart2_26(getColumnValue("poprzedniewizy_1_txtdataod", rows));
      currentForm.setPrevvisaend2_26(getColumnValue("poprzedniewizy_1_txtdatado", rows));
      currentForm.setPrevvisastart3_26(getColumnValue("poprzedniewizy_2_txtdataod", rows));
      currentForm.setPrevvisaend3_26(getColumnValue("poprzedniewizy_2_txtdatado", rows));
      currentForm.setFingerprint_27(getColumnKeyPart("ctl00$cp$f$rbl27", rows));
      if (getColumnValue("ctl00$cp$f$chkniedotyczy28",rows).equals("")) {
        currentForm.setEndcountrypermit_28("Tak");
      }
      currentForm.setEndcountryby_28(getColumnValue("ctl00$cp$f$txt27WydanePrzez", rows));
      currentForm.setEndcountryfrom_28(getColumnValue("ctl00$cp$f$txt30datawjazdu", rows));
      currentForm.setEndcountryto_28(getColumnValue("ctl00$cp$f$txt31datawyjazdu", rows));
      currentForm.setStartvisa_29(getColumnValue("ctl00$cp$f$txt30datawjazdu", rows));
      currentForm.setEndvisa_30(getColumnValue("ctl00$cp$f$txt31datawyjazdu", rows));
      currentForm.setInvite_31(getColumnKeyPart("ctl00$cp$f$ctrl31_$rbl34", rows));
      currentForm.setTitle_31(getColumnValue("ctl00$cp$f$ctrl31_$txt34nazwa", rows));
      currentForm.setName_31(getColumnValue("ctl00$cp$f$ctrl31_$txt34Imie", rows));
      currentForm.setSurname_31(getColumnValue("ctl00$cp$f$ctrl31_$txt34Nazwisko", rows));
      currentForm.setCountry_31(ConstLists
          .getKeyByValue(ConstLists.inputCountriesList, getColumnValue("ctl00$cp$f$ctrl31_$ddl34panstwo", rows)));
      currentForm.setCity_31(getColumnValue("ctl00$cp$f$ctrl31_$txt34miejscowosc", rows));
      currentForm.setIndex_31(getColumnValue("ctl00$cp$f$ctrl31_$txt34kod", rows));
      currentForm.setPreftel_31(getColumnValue("ctl00$cp$f$ctrl31_$txt34prefikstel", rows));
      currentForm.setTel_31(getColumnValue("ctl00$cp$f$ctrl31_$txt34tel", rows));
      currentForm.setPreffax_31(getColumnValue("ctl00$cp$f$ctrl31_$txt34prefiksfax", rows));
      currentForm.setFax_31(getColumnValue("ctl00$cp$f$ctrl31_$txt34fax", rows));

      currentForm.setAddress_31(getColumnValue("ctl00$cp$f$ctrl31_$txt34adres", rows));
      currentForm.setBuilding_31(getColumnValue("ctl00$cp$f$ctrl31_$txt34numerdomu", rows));
      currentForm.setFlat_31(getColumnValue("ctl00$cp$f$ctrl31_$txt34numerlokalu", rows));
      currentForm.setEmail_31(getColumnValue("ctl00$cp$f$ctrl31_$txt34email", rows));
      currentForm.setExpencies_33(getColumnKeyPart("ctl00$cp$f$rbl35", rows));
      currentForm.setExpenciesother_33(getColumnValue("ctl00$cp$f$txt35KtoPokrywaKoszty", rows));
      //currentForm.setMoney_type_33(getColumnValue("ctl00$cp$f$ctrl31_$txt34miejscowosc", rows));
      currentForm.setMoney_type_other_33(getColumnValue("ctl00$cp$f$txt36Inne", rows));
      currentForm.setInshurance_33(getColumnValue("ctl00$cp$f$txt36WazneDo", rows));
      currentForm.setPersonaldataes_34(getColumnValue("ctl00$cp$f$chkNieDotyczy43", rows));
      currentForm.setPersonaldatasurname_34(getColumnValue("ctl00$cp$f$txt43Nazwisko", rows));
      currentForm.setPersonaldatadate_34(getColumnValue("ctl00$cp$f$txt43DataUrodzenia", rows));
      currentForm.setPersonaldatapass_34(getColumnValue("ctl00$cp$f$txt43Paszport", rows));
      currentForm.setPersonaldatacitizen_34(ConstLists
          .getKeyByValue(ConstLists.inputCountriesList, getColumnValue("ctl00$cp$f$ddl43Obywatelstwo", rows)));
      currentForm.setPersonaldatarelation_34(getColumnKeyPart("ctl00$cp$f$rbl43", rows));

      result.add(currentForm);
    }

    return result;
  }

  private String getColumnValue(String name,Elements rows) {
    for(Element row: rows) {
      Elements cols = row.getElementsByTag("td");
      String firstCell = cols.get(0).text();
      if (firstCell.equals(name) && cols.size() > 2) {
        return cols.get(2).text();
      }
    }
    return "";
  }

  private String getColumnKeyPart(String name,Elements rows) {
    for(Element row: rows) {
      Elements cols = row.getElementsByTag("td");
      String firstCell = cols.get(0).text();
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
