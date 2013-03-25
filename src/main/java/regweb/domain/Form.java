package regweb.domain;

import javax.persistence.*;
import java.util.Date;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 24.03.13
 * Time: 22:34
 */
@Entity
@Table(name = "FORMS")
public class Form {
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column(name = "USER_ID")
    private Integer user_id;

    @Column(name = "ADDED")
    private Date added;

    @Column(name = "IS_REGISTERED")
    private boolean is_registered;

    @Column(name = "SURNAME_1")
    private String surname_1;

    @Column(name = "SURNAME_2")
    private String surname_2;

    @Column(name = "NAME_3")
    private String name_3;

    @Column(name = "BIRTHDATE_4")
    private String birthdate_4;

    @Column(name = "PLACEDATE_5")
    private String placedate_5;

    @Column(name = "CITIZENSHIP_7")
    private String citizenship_7;

    @Column(name = "CITIZENSHIP_BORN_8")
    private String citizenship_born_8;

    @Column(name = "SEX_9")
    private Integer sex_9;

    @Column(name = "FAMILY_10")
    private String family_10;

    @Column(name = "IDENTNUM_11")
    private String identnum_11;

    @Column(name = "PASSDATA_12")
    private String passdata_12;

    @Column(name = "PASSNUM_13")
    private String passnum_13;

    @Column(name = "PASSISSUEDATE_14")
    private String passissuedate_14;

    @Column(name = "PASSEXPIRATION_15")
    private String passexpiration_15;

    @Column(name = "PASSBY_16")
    private String passby_16;

    @Column(name = "CITIZENSHIP_CHILD")
    private String citizenship_child;

    @Column(name = "IS_CHILDREN")
    private boolean is_children;

    @Column(name = "NAME_CHILD")
    private String name_child;

    @Column(name = "SURNAME_CHILD")
    private String surname_child;

    @Column(name = "COUNTRY_CHILD")
    private String country_child;

    @Column(name = "STATE_CHILD")
    private String state_child;

    @Column(name = "CITY_CHILD")
    private String city_child;

    @Column(name = "INDEX_CHILD")
    private String index_child;

    @Column(name = "ADDRESS_CHILD")
    private String address_child;

    @Column(name = "COUNTRY_17")
    private String country_17;

    @Column(name = "STATE_17")
    private String state_17;

    @Column(name = "CITY_17")
    private String city_17;

    @Column(name = "INDEX_17")
    private String index_17;

    @Column(name = "ADDRESS_17")
    private String address_17;

    @Column(name = "EMAIL_17")
    private String email_17;

    @Column(name = "PREFTEL_17")
    private String preftel_17;

    @Column(name = "TEL_17")
    private String tel_17;

    @Column(name = "COUNTRYVISITOR_18")
    private boolean countryvisitor_18;

    @Column(name = "VISITDOC_18")
    private String visitdoc_18;

    @Column(name = "EXPDATE_18")
    private String expdate_18;

    @Column(name = "PROFESSION_19")
    private String profession_19;

    @Column(name = "EMPLOYEE_20")
    private String employee_20;

    @Column(name = "COUNTRY_20")
    private String country_20;

    @Column(name = "STATE_20")
    private String state_20;

    @Column(name = "CITY_20")
    private String city_20;

    @Column(name = "INDEX_20")
    private String index_20;

    @Column(name = "ADDRESS_20")
    private String address_20;

    @Column(name = "PREFTEL_20")
    private String preftel_20;

    @Column(name = "TEL_20")
    private String tel_20;

    @Column(name = "TITLE_20")
    private String title_20;

    @Column(name = "EMAIL_20")
    private String email_20;

    @Column(name = "PREFFAX_20")
    private String preffax_20;

    @Column(name = "FAX_20")
    private String fax_20;

    @Column(name = "GOAL_21")
    private String goal_21;

    @Column(name = "DEST_COUNTRY_22")
    private String dest_country_22;

    @Column(name = "FIRST_COUNTRY_23")
    private String first_country_23;

    @Column(name = "TYPEVISA_24")
    private Integer typevisa_24;

    @Column(name = "LENVISA_25")
    private Integer lenvisa_25;

    @Column(name = "STARTVISA_29")
    private String startvisa_29;

    @Column(name = "ENDVISA_30")
    private String endvisa_30;

    @Column(name = "PREVVISAS_26")
    private String prevvisas_26;

    @Column(name = "INVITE_31")
    private Integer invite_31;

    @Column(name = "TITLE_31")
    private String title_31;

    @Column(name = "NAME_31")
    private String name_31;

    @Column(name = "SURNAME_31")
    private String surname_31;

    @Column(name = "COUNTRY_31")
    private String country_31;

    @Column(name = "CITY_31")
    private String city_31;

    @Column(name = "INDEX_31")
    private String index_31;

    @Column(name = "PREFTEL_31")
    private String preftel_31;

    @Column(name = "TEL_31")
    private String tel_31;

    @Column(name = "PREFFAX_31")
    private String preffax_31;

    @Column(name = "FAX_31")
    private String fax_31;

    @Column(name = "ADDRESS_31")
    private String address_31;

    @Column(name = "BUILDING_31")
    private String building_31;

    @Column(name = "FLAT_31")
    private String flat_31;

    @Column(name = "EMAIL_31")
    private String email_31;

    @Column(name = "EXPENCIES_33")
    private String expencies_33;

    @Column(name = "MONEY_TYPE_33")
    private String money_type_33;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Date getAdded() {
        return added;
    }

    public void setAdded(Date added) {
        this.added = added;
    }

    public boolean isIs_registered() {
        return is_registered;
    }

    public void setIs_registered(boolean is_registered) {
        this.is_registered = is_registered;
    }

    public String getSurname_1() {
        return surname_1;
    }

    public void setSurname_1(String surname_1) {
        this.surname_1 = surname_1;
    }

    public String getSurname_2() {
        return surname_2;
    }

    public void setSurname_2(String surname_2) {
        this.surname_2 = surname_2;
    }

    public String getName_3() {
        return name_3;
    }

    public void setName_3(String name_3) {
        this.name_3 = name_3;
    }

    public String getBirthdate_4() {
        return birthdate_4;
    }

    public void setBirthdate_4(String birthdate_4) {
        this.birthdate_4 = birthdate_4;
    }

    public String getPlacedate_5() {
        return placedate_5;
    }

    public void setPlacedate_5(String placedate_5) {
        this.placedate_5 = placedate_5;
    }

    public String getCitizenship_7() {
        return citizenship_7;
    }

    public void setCitizenship_7(String citizenship_7) {
        this.citizenship_7 = citizenship_7;
    }

    public String getCitizenship_born_8() {
        return citizenship_born_8;
    }

    public void setCitizenship_born_8(String citizenship_born_8) {
        this.citizenship_born_8 = citizenship_born_8;
    }

    public Integer getSex_9() {
        return sex_9;
    }

    public void setSex_9(Integer sex_9) {
        this.sex_9 = sex_9;
    }

    public String getFamily_10() {
        return family_10;
    }

    public void setFamily_10(String family_10) {
        this.family_10 = family_10;
    }

    public String getIdentnum_11() {
        return identnum_11;
    }

    public void setIdentnum_11(String identnum_11) {
        this.identnum_11 = identnum_11;
    }

    public String getPassdata_12() {
        return passdata_12;
    }

    public void setPassdata_12(String passdata_12) {
        this.passdata_12 = passdata_12;
    }

    public String getPassnum_13() {
        return passnum_13;
    }

    public void setPassnum_13(String passnum_13) {
        this.passnum_13 = passnum_13;
    }

    public String getPassissuedate_14() {
        return passissuedate_14;
    }

    public void setPassissuedate_14(String passissuedate_14) {
        this.passissuedate_14 = passissuedate_14;
    }

    public String getPassexpiration_15() {
        return passexpiration_15;
    }

    public void setPassexpiration_15(String passexpiration_15) {
        this.passexpiration_15 = passexpiration_15;
    }

    public String getPassby_16() {
        return passby_16;
    }

    public void setPassby_16(String passby_16) {
        this.passby_16 = passby_16;
    }

    public String getCitizenship_child() {
        return citizenship_child;
    }

    public void setCitizenship_child(String citizenship_child) {
        this.citizenship_child = citizenship_child;
    }

    public boolean isIs_children() {
        return is_children;
    }

    public void setIs_children(boolean is_children) {
        this.is_children = is_children;
    }

    public String getName_child() {
        return name_child;
    }

    public void setName_child(String name_child) {
        this.name_child = name_child;
    }

    public String getSurname_child() {
        return surname_child;
    }

    public void setSurname_child(String surname_child) {
        this.surname_child = surname_child;
    }

    public String getCountry_child() {
        return country_child;
    }

    public void setCountry_child(String country_child) {
        this.country_child = country_child;
    }

    public String getState_child() {
        return state_child;
    }

    public void setState_child(String state_child) {
        this.state_child = state_child;
    }

    public String getCity_child() {
        return city_child;
    }

    public void setCity_child(String city_child) {
        this.city_child = city_child;
    }

    public String getIndex_child() {
        return index_child;
    }

    public void setIndex_child(String index_child) {
        this.index_child = index_child;
    }

    public String getAddress_child() {
        return address_child;
    }

    public void setAddress_child(String address_child) {
        this.address_child = address_child;
    }

    public String getCountry_17() {
        return country_17;
    }

    public void setCountry_17(String country_17) {
        this.country_17 = country_17;
    }

    public String getState_17() {
        return state_17;
    }

    public void setState_17(String state_17) {
        this.state_17 = state_17;
    }

    public String getCity_17() {
        return city_17;
    }

    public void setCity_17(String city_17) {
        this.city_17 = city_17;
    }

    public String getIndex_17() {
        return index_17;
    }

    public void setIndex_17(String index_17) {
        this.index_17 = index_17;
    }

    public String getAddress_17() {
        return address_17;
    }

    public void setAddress_17(String address_17) {
        this.address_17 = address_17;
    }

    public String getEmail_17() {
        return email_17;
    }

    public void setEmail_17(String email_17) {
        this.email_17 = email_17;
    }

    public String getPreftel_17() {
        return preftel_17;
    }

    public void setPreftel_17(String preftel_17) {
        this.preftel_17 = preftel_17;
    }

    public String getTel_17() {
        return tel_17;
    }

    public void setTel_17(String tel_17) {
        this.tel_17 = tel_17;
    }

    public boolean isCountryvisitor_18() {
        return countryvisitor_18;
    }

    public void setCountryvisitor_18(boolean countryvisitor_18) {
        this.countryvisitor_18 = countryvisitor_18;
    }

    public String getVisitdoc_18() {
        return visitdoc_18;
    }

    public void setVisitdoc_18(String visitdoc_18) {
        this.visitdoc_18 = visitdoc_18;
    }

    public String getExpdate_18() {
        return expdate_18;
    }

    public void setExpdate_18(String expdate_18) {
        this.expdate_18 = expdate_18;
    }

    public String getProfession_19() {
        return profession_19;
    }

    public void setProfession_19(String profession_19) {
        this.profession_19 = profession_19;
    }

    public String getEmployee_20() {
        return employee_20;
    }

    public void setEmployee_20(String employee_20) {
        this.employee_20 = employee_20;
    }

    public String getCountry_20() {
        return country_20;
    }

    public void setCountry_20(String country_20) {
        this.country_20 = country_20;
    }

    public String getState_20() {
        return state_20;
    }

    public void setState_20(String state_20) {
        this.state_20 = state_20;
    }

    public String getCity_20() {
        return city_20;
    }

    public void setCity_20(String city_20) {
        this.city_20 = city_20;
    }

    public String getIndex_20() {
        return index_20;
    }

    public void setIndex_20(String index_20) {
        this.index_20 = index_20;
    }

    public String getAddress_20() {
        return address_20;
    }

    public void setAddress_20(String address_20) {
        this.address_20 = address_20;
    }

    public String getPreftel_20() {
        return preftel_20;
    }

    public void setPreftel_20(String preftel_20) {
        this.preftel_20 = preftel_20;
    }

    public String getTel_20() {
        return tel_20;
    }

    public void setTel_20(String tel_20) {
        this.tel_20 = tel_20;
    }

    public String getTitle_20() {
        return title_20;
    }

    public void setTitle_20(String title_20) {
        this.title_20 = title_20;
    }

    public String getEmail_20() {
        return email_20;
    }

    public void setEmail_20(String email_20) {
        this.email_20 = email_20;
    }

    public String getPreffax_20() {
        return preffax_20;
    }

    public void setPreffax_20(String preffax_20) {
        this.preffax_20 = preffax_20;
    }

    public String getFax_20() {
        return fax_20;
    }

    public void setFax_20(String fax_20) {
        this.fax_20 = fax_20;
    }

    public String getGoal_21() {
        return goal_21;
    }

    public void setGoal_21(String goal_21) {
        this.goal_21 = goal_21;
    }

    public String getDest_country_22() {
        return dest_country_22;
    }

    public void setDest_country_22(String dest_country_22) {
        this.dest_country_22 = dest_country_22;
    }

    public String getFirst_country_23() {
        return first_country_23;
    }

    public void setFirst_country_23(String first_country_23) {
        this.first_country_23 = first_country_23;
    }

    public Integer getTypevisa_24() {
        return typevisa_24;
    }

    public void setTypevisa_24(Integer typevisa_24) {
        this.typevisa_24 = typevisa_24;
    }

    public Integer getLenvisa_25() {
        return lenvisa_25;
    }

    public void setLenvisa_25(Integer lenvisa_25) {
        this.lenvisa_25 = lenvisa_25;
    }

    public String getStartvisa_29() {
        return startvisa_29;
    }

    public void setStartvisa_29(String startvisa_29) {
        this.startvisa_29 = startvisa_29;
    }

    public String getEndvisa_30() {
        return endvisa_30;
    }

    public void setEndvisa_30(String endvisa_30) {
        this.endvisa_30 = endvisa_30;
    }

    public String getPrevvisas_26() {
        return prevvisas_26;
    }

    public void setPrevvisas_26(String prevvisas_26) {
        this.prevvisas_26 = prevvisas_26;
    }

    public Integer getInvite_31() {
        return invite_31;
    }

    public void setInvite_31(Integer invite_31) {
        this.invite_31 = invite_31;
    }

    public String getTitle_31() {
        return title_31;
    }

    public void setTitle_31(String title_31) {
        this.title_31 = title_31;
    }

    public String getName_31() {
        return name_31;
    }

    public void setName_31(String name_31) {
        this.name_31 = name_31;
    }

    public String getSurname_31() {
        return surname_31;
    }

    public void setSurname_31(String surname_31) {
        this.surname_31 = surname_31;
    }

    public String getCountry_31() {
        return country_31;
    }

    public void setCountry_31(String country_31) {
        this.country_31 = country_31;
    }

    public String getCity_31() {
        return city_31;
    }

    public void setCity_31(String city_31) {
        this.city_31 = city_31;
    }

    public String getIndex_31() {
        return index_31;
    }

    public void setIndex_31(String index_31) {
        this.index_31 = index_31;
    }

    public String getPreftel_31() {
        return preftel_31;
    }

    public void setPreftel_31(String preftel_31) {
        this.preftel_31 = preftel_31;
    }

    public String getTel_31() {
        return tel_31;
    }

    public void setTel_31(String tel_31) {
        this.tel_31 = tel_31;
    }

    public String getPreffax_31() {
        return preffax_31;
    }

    public void setPreffax_31(String preffax_31) {
        this.preffax_31 = preffax_31;
    }

    public String getFax_31() {
        return fax_31;
    }

    public void setFax_31(String fax_31) {
        this.fax_31 = fax_31;
    }

    public String getAddress_31() {
        return address_31;
    }

    public void setAddress_31(String address_31) {
        this.address_31 = address_31;
    }

    public String getBuilding_31() {
        return building_31;
    }

    public void setBuilding_31(String building_31) {
        this.building_31 = building_31;
    }

    public String getFlat_31() {
        return flat_31;
    }

    public void setFlat_31(String flat_31) {
        this.flat_31 = flat_31;
    }

    public String getEmail_31() {
        return email_31;
    }

    public void setEmail_31(String email_31) {
        this.email_31 = email_31;
    }

    public String getExpencies_33() {
        return expencies_33;
    }

    public void setExpencies_33(String expencies_33) {
        this.expencies_33 = expencies_33;
    }

    public String getMoney_type_33() {
        return money_type_33;
    }

    public void setMoney_type_33(String money_type_33) {
        this.money_type_33 = money_type_33;
    }
}