  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITY.
*&-----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_GETENTITY_BASE
*&* This class has been generated  on 14.01.2025 01:04:51 in client 001
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZEXAMPLE2_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA businesspartners_get_entity TYPE zcl_zexample2_mpc=>ts_businesspartner.
 DATA vh_languageset_get_entity TYPE zcl_zexample2_mpc=>ts_vh_language.
 DATA vh_countryset_get_entity TYPE zcl_zexample2_mpc=>ts_vh_country.
 DATA vh_bproleset_get_entity TYPE zcl_zexample2_mpc=>ts_vh_bprole.
 DATA productset_get_entity TYPE zcl_zexample2_mpc=>ts_product.
 DATA vh_producttypeco_get_entity TYPE zcl_zexample2_mpc=>ts_vh_producttypecode.
 DATA vh_addresstypese_get_entity TYPE zcl_zexample2_mpc=>ts_vh_addresstype.
 DATA vh_sexset_get_entity TYPE zcl_zexample2_mpc=>ts_vh_sex.
 DATA vh_unitlengthset_get_entity TYPE zcl_zexample2_mpc=>ts_vh_unitlength.
 DATA contactset_get_entity TYPE zcl_zexample2_mpc=>ts_contact.
 DATA salesorderset_get_entity TYPE zcl_zexample2_mpc=>ts_salesorder.
 DATA vh_unitweightset_get_entity TYPE zcl_zexample2_mpc=>ts_vh_unitweight.
 DATA vh_unitquantitys_get_entity TYPE zcl_zexample2_mpc=>ts_vh_unitquantity.
 DATA vh_categoryset_get_entity TYPE zcl_zexample2_mpc=>ts_vh_category.
 DATA salesorderlineit_get_entity TYPE zcl_zexample2_mpc=>ts_salesorderlineitem.
 DATA vh_currencyset_get_entity TYPE zcl_zexample2_mpc=>ts_vh_currency.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data.       "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  BusinessPartnerSet
*-------------------------------------------------------------------------*
      WHEN 'BusinessPartnerSet'.
*     Call the entity set generated method
          businesspartners_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = businesspartners_get_entity
                         es_response_context = es_response_context
          ).

        IF businesspartners_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = businesspartners_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  VH_LanguageSet
*-------------------------------------------------------------------------*
      WHEN 'VH_LanguageSet'.
*     Call the entity set generated method
          vh_languageset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = vh_languageset_get_entity
                         es_response_context = es_response_context
          ).

        IF vh_languageset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = vh_languageset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  VH_CountrySet
*-------------------------------------------------------------------------*
      WHEN 'VH_CountrySet'.
*     Call the entity set generated method
          vh_countryset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = vh_countryset_get_entity
                         es_response_context = es_response_context
          ).

        IF vh_countryset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = vh_countryset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  VH_BPRoleSet
*-------------------------------------------------------------------------*
      WHEN 'VH_BPRoleSet'.
*     Call the entity set generated method
          vh_bproleset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = vh_bproleset_get_entity
                         es_response_context = es_response_context
          ).

        IF vh_bproleset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = vh_bproleset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  ProductSet
*-------------------------------------------------------------------------*
      WHEN 'ProductSet'.
*     Call the entity set generated method
          productset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = productset_get_entity
                         es_response_context = es_response_context
          ).

        IF productset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = productset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  VH_ProductTypeCodeSet
*-------------------------------------------------------------------------*
      WHEN 'VH_ProductTypeCodeSet'.
*     Call the entity set generated method
          vh_producttypeco_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = vh_producttypeco_get_entity
                         es_response_context = es_response_context
          ).

        IF vh_producttypeco_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = vh_producttypeco_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  VH_AddressTypeSet
*-------------------------------------------------------------------------*
      WHEN 'VH_AddressTypeSet'.
*     Call the entity set generated method
          vh_addresstypese_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = vh_addresstypese_get_entity
                         es_response_context = es_response_context
          ).

        IF vh_addresstypese_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = vh_addresstypese_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  VH_SexSet
*-------------------------------------------------------------------------*
      WHEN 'VH_SexSet'.
*     Call the entity set generated method
          vh_sexset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = vh_sexset_get_entity
                         es_response_context = es_response_context
          ).

        IF vh_sexset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = vh_sexset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  VH_UnitLengthSet
*-------------------------------------------------------------------------*
      WHEN 'VH_UnitLengthSet'.
*     Call the entity set generated method
          vh_unitlengthset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = vh_unitlengthset_get_entity
                         es_response_context = es_response_context
          ).

        IF vh_unitlengthset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = vh_unitlengthset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  ContactSet
*-------------------------------------------------------------------------*
      WHEN 'ContactSet'.
*     Call the entity set generated method
          contactset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = contactset_get_entity
                         es_response_context = es_response_context
          ).

        IF contactset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = contactset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  SalesOrderSet
*-------------------------------------------------------------------------*
      WHEN 'SalesOrderSet'.
*     Call the entity set generated method
          salesorderset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = salesorderset_get_entity
                         es_response_context = es_response_context
          ).

        IF salesorderset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = salesorderset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  VH_UnitWeightSet
*-------------------------------------------------------------------------*
      WHEN 'VH_UnitWeightSet'.
*     Call the entity set generated method
          vh_unitweightset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = vh_unitweightset_get_entity
                         es_response_context = es_response_context
          ).

        IF vh_unitweightset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = vh_unitweightset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  VH_UnitQuantitySet
*-------------------------------------------------------------------------*
      WHEN 'VH_UnitQuantitySet'.
*     Call the entity set generated method
          vh_unitquantitys_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = vh_unitquantitys_get_entity
                         es_response_context = es_response_context
          ).

        IF vh_unitquantitys_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = vh_unitquantitys_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  VH_CategorySet
*-------------------------------------------------------------------------*
      WHEN 'VH_CategorySet'.
*     Call the entity set generated method
          vh_categoryset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = vh_categoryset_get_entity
                         es_response_context = es_response_context
          ).

        IF vh_categoryset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = vh_categoryset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  SalesOrderLineItemSet
*-------------------------------------------------------------------------*
      WHEN 'SalesOrderLineItemSet'.
*     Call the entity set generated method
          salesorderlineit_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = salesorderlineit_get_entity
                         es_response_context = es_response_context
          ).

        IF salesorderlineit_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = salesorderlineit_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  VH_CurrencySet
*-------------------------------------------------------------------------*
      WHEN 'VH_CurrencySet'.
*     Call the entity set generated method
          vh_currencyset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = vh_currencyset_get_entity
                         es_response_context = es_response_context
          ).

        IF vh_currencyset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = vh_currencyset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.

      WHEN OTHERS.
        super->/iwbep/if_mgw_appl_srv_runtime~get_entity(
           EXPORTING
             iv_entity_name = iv_entity_name
             iv_entity_set_name = iv_entity_set_name
             iv_source_name = iv_source_name
             it_key_tab = it_key_tab
             it_navigation_path = it_navigation_path
          IMPORTING
            er_entity = er_entity
    ).
 ENDCASE.
  endmethod.