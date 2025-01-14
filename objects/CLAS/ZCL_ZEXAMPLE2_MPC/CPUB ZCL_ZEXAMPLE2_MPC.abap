class ZCL_ZEXAMPLE2_MPC definition
  public
  inheriting from /IWBEP/CL_MGW_PUSH_ABS_MODEL
  create public .

public section.

  types:
    begin of CT_ADDRESS,
        CITY type C length 40,
        POSTALCODE type C length 10,
        STREET type C length 60,
        BUILDING type C length 10,
        COUNTRY type C length 3,
        ADDRESSTYPE type C length 2,
    end of CT_ADDRESS .
  types:
   begin of ts_text_element,
      artifact_name  type c length 40,       " technical name
      artifact_type  type c length 4,
      parent_artifact_name type c length 40, " technical name
      parent_artifact_type type c length 4,
      text_symbol    type textpoolky,
   end of ts_text_element .
  types:
         tt_text_elements type standard table of ts_text_element with key text_symbol .
  types:
    begin of CT_STRING,
        STRING type string,
    end of CT_STRING .
  types:
    begin of TS_REGENERATEALLDATA,
        NOOFSALESORDERS type I,
    end of TS_REGENERATEALLDATA .
  types:
    begin of TS_SALESORDER_CONFIRM,
        SALESORDERID type C length 10,
    end of TS_SALESORDER_CONFIRM .
  types:
    begin of TS_SALESORDER_CANCEL,
        SALESORDERID type C length 10,
    end of TS_SALESORDER_CANCEL .
  types:
    begin of TS_SALESORDER_INVOICECREATED,
        SALESORDERID type C length 10,
    end of TS_SALESORDER_INVOICECREATED .
  types:
    begin of TS_SALESORDER_GOODSISSUECREATE,
        SALESORDERID type C length 10,
    end of TS_SALESORDER_GOODSISSUECREATE .
  types:
  begin of TS_BUSINESSPARTNER,
     ADDRESS type CT_ADDRESS,
     BUSINESSPARTNERID type C length 10,
     COMPANYNAME type C length 80,
     WEBADDRESS type string,
     EMAILADDRESS type C length 255,
     PHONENUMBER type C length 30,
     FAXNUMBER type C length 30,
     LEGALFORM type C length 10,
     CURRENCYCODE type C length 5,
     BUSINESSPARTNERROLE type C length 3,
     CREATEDAT type TIMESTAMPL,
     CHANGEDAT type TIMESTAMPL,
  end of TS_BUSINESSPARTNER .
  types:
TT_BUSINESSPARTNER type standard table of TS_BUSINESSPARTNER .
  types:
  begin of TS_PRODUCT,
     PRODUCTID type C length 10,
     TYPECODE type C length 2,
     CATEGORY type C length 40,
     NAME type C length 255,
     NAMELANGUAGE type C length 2,
     DESCRIPTION type C length 255,
     DESCRIPTIONLANGUAGE type C length 2,
     SUPPLIERID type C length 10,
     SUPPLIERNAME type C length 80,
     TAXTARIFCODE type INT1,
     MEASUREUNIT type C length 3,
     WEIGHTMEASURE type P length 7 decimals 2,
     WEIGHTUNIT type C length 3,
     CURRENCYCODE type C length 5,
     PRICE type P length 9 decimals 2,
     WIDTH type P length 7 decimals 2,
     DEPTH type P length 7 decimals 2,
     HEIGHT type P length 7 decimals 2,
     DIMUNIT type C length 3,
     CREATEDAT type TIMESTAMPL,
     CHANGEDAT type TIMESTAMPL,
  end of TS_PRODUCT .
  types:
TT_PRODUCT type standard table of TS_PRODUCT .
  types:
  begin of TS_SALESORDER,
     SALESORDERID type C length 10,
     NOTE type C length 255,
     NOTELANGUAGE type C length 2,
     CUSTOMERID type C length 10,
     CUSTOMERNAME type C length 80,
     CURRENCYCODE type C length 5,
     GROSSAMOUNT type P length 9 decimals 2,
     NETAMOUNT type P length 9 decimals 2,
     TAXAMOUNT type P length 9 decimals 2,
     LIFECYCLESTATUS type C length 1,
     LIFECYCLESTATUSDESCRIPTION type C length 60,
     BILLINGSTATUS type C length 1,
     BILLINGSTATUSDESCRIPTION type C length 60,
     DELIVERYSTATUS type C length 1,
     DELIVERYSTATUSDESCRIPTION type C length 60,
     CREATEDAT type TIMESTAMPL,
     CHANGEDAT type TIMESTAMPL,
  end of TS_SALESORDER .
  types:
TT_SALESORDER type standard table of TS_SALESORDER .
  types:
  begin of TS_SALESORDERLINEITEM,
     SALESORDERID type C length 10,
     ITEMPOSITION type C length 10,
     PRODUCTID type C length 10,
     NOTE type C length 255,
     NOTELANGUAGE type C length 2,
     CURRENCYCODE type C length 5,
     GROSSAMOUNT type P length 9 decimals 2,
     NETAMOUNT type P length 9 decimals 2,
     TAXAMOUNT type P length 9 decimals 2,
     DELIVERYDATE type TIMESTAMPL,
     QUANTITY type P length 7 decimals 2,
     QUANTITYUNIT type C length 3,
  end of TS_SALESORDERLINEITEM .
  types:
TT_SALESORDERLINEITEM type standard table of TS_SALESORDERLINEITEM .
  types:
  begin of TS_CONTACT,
     ADDRESS type CT_ADDRESS,
     CONTACTGUID type SYSUUID_X,
     BUSINESSPARTNERID type C length 10,
     TITLE type C length 10,
     FIRSTNAME type C length 40,
     MIDDLENAME type C length 40,
     LASTNAME type C length 40,
     NICKNAME type C length 40,
     INITIALS type C length 10,
     SEX type C length 1,
     PHONENUMBER type C length 30,
     FAXNUMBER type C length 30,
     EMAILADDRESS type C length 255,
     LANGUAGE type C length 2,
     DATEOFBIRTH type TIMESTAMPL,
  end of TS_CONTACT .
  types:
TT_CONTACT type standard table of TS_CONTACT .
  types:
  begin of TS_VH_SEX,
     SEX type C length 1,
     SHORTTEXT type C length 60,
  end of TS_VH_SEX .
  types:
TT_VH_SEX type standard table of TS_VH_SEX .
  types:
  begin of TS_VH_COUNTRY,
     LAND1 type C length 3,
     LANDX type C length 15,
     NATIO type C length 15,
  end of TS_VH_COUNTRY .
  types:
TT_VH_COUNTRY type standard table of TS_VH_COUNTRY .
  types:
  begin of TS_VH_ADDRESSTYPE,
     ADDRESSTYPE type C length 2,
     SHORTTEXT type C length 60,
  end of TS_VH_ADDRESSTYPE .
  types:
TT_VH_ADDRESSTYPE type standard table of TS_VH_ADDRESSTYPE .
  types:
  begin of TS_VH_CATEGORY,
     CATEGORY type C length 40,
  end of TS_VH_CATEGORY .
  types:
TT_VH_CATEGORY type standard table of TS_VH_CATEGORY .
  types:
  begin of TS_VH_CURRENCY,
     WAERS type C length 5,
     LTEXT type C length 40,
  end of TS_VH_CURRENCY .
  types:
TT_VH_CURRENCY type standard table of TS_VH_CURRENCY .
  types:
  begin of TS_VH_UNITQUANTITY,
     MSEHI type C length 3,
     MSEHL type C length 30,
  end of TS_VH_UNITQUANTITY .
  types:
TT_VH_UNITQUANTITY type standard table of TS_VH_UNITQUANTITY .
  types:
  begin of TS_VH_UNITWEIGHT,
     MSEHI type C length 3,
     MSEHL type C length 30,
  end of TS_VH_UNITWEIGHT .
  types:
TT_VH_UNITWEIGHT type standard table of TS_VH_UNITWEIGHT .
  types:
  begin of TS_VH_UNITLENGTH,
     MSEHI type C length 3,
     MSEHL type C length 30,
  end of TS_VH_UNITLENGTH .
  types:
TT_VH_UNITLENGTH type standard table of TS_VH_UNITLENGTH .
  types:
  begin of TS_VH_PRODUCTTYPECODE,
     TYPECODE type C length 2,
     SHORTTEXT type C length 60,
  end of TS_VH_PRODUCTTYPECODE .
  types:
TT_VH_PRODUCTTYPECODE type standard table of TS_VH_PRODUCTTYPECODE .
  types:
  begin of TS_VH_BPROLE,
     BPROLE type C length 3,
     SHORTTEXT type C length 60,
  end of TS_VH_BPROLE .
  types:
TT_VH_BPROLE type standard table of TS_VH_BPROLE .
  types:
  begin of TS_VH_LANGUAGE,
     SPRAS type C length 2,
     SPTXT type C length 16,
  end of TS_VH_LANGUAGE .
  types:
TT_VH_LANGUAGE type standard table of TS_VH_LANGUAGE .

  constants GC_BUSINESSPARTNER type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'BusinessPartner' ##NO_TEXT.
  constants GC_CONTACT type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'Contact' ##NO_TEXT.
  constants GC_CT_ADDRESS type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'CT_Address' ##NO_TEXT.
  constants GC_CT_STRING type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'CT_String' ##NO_TEXT.
  constants GC_PRODUCT type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'Product' ##NO_TEXT.
  constants GC_SALESORDER type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'SalesOrder' ##NO_TEXT.
  constants GC_SALESORDERLINEITEM type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'SalesOrderLineItem' ##NO_TEXT.
  constants GC_VH_ADDRESSTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'VH_AddressType' ##NO_TEXT.
  constants GC_VH_BPROLE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'VH_BPRole' ##NO_TEXT.
  constants GC_VH_CATEGORY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'VH_Category' ##NO_TEXT.
  constants GC_VH_COUNTRY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'VH_Country' ##NO_TEXT.
  constants GC_VH_CURRENCY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'VH_Currency' ##NO_TEXT.
  constants GC_VH_LANGUAGE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'VH_Language' ##NO_TEXT.
  constants GC_VH_PRODUCTTYPECODE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'VH_ProductTypeCode' ##NO_TEXT.
  constants GC_VH_SEX type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'VH_Sex' ##NO_TEXT.
  constants GC_VH_UNITLENGTH type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'VH_UnitLength' ##NO_TEXT.
  constants GC_VH_UNITQUANTITY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'VH_UnitQuantity' ##NO_TEXT.
  constants GC_VH_UNITWEIGHT type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'VH_UnitWeight' ##NO_TEXT.

  methods LOAD_TEXT_ELEMENTS
  final
    returning
      value(RT_TEXT_ELEMENTS) type TT_TEXT_ELEMENTS
    raising
      /IWBEP/CX_MGW_MED_EXCEPTION .

  methods DEFINE
    redefinition .
  methods GET_LAST_MODIFIED
    redefinition .