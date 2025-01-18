  METHOD productset_update_entity.

    DATA: ls_product    LIKE er_entity,
          ls_entity     LIKE er_entity,
          ls_headerdata TYPE bapi_epm_product_header,
          ls_product_id TYPE bapi_epm_product_id,
          lt_return     TYPE STANDARD TABLE OF bapiret2.

    io_data_provider->read_entry_data( IMPORTING es_data = ls_product ).

    io_tech_request_context->get_converted_keys(  IMPORTING es_key_values = ls_entity ).

    ls_product_id-product_id = ls_entity-productid.

    CALL FUNCTION 'BAPI_EPM_PRODUCT_GET_DETAIL'
      EXPORTING
        product_id = ls_product_id
      IMPORTING
        headerdata = ls_headerdata
      TABLES
*       CONVERSION_FACTORS =
        return     = lt_return.

    IF lt_return IS NOT INITIAL.
      mo_context->get_message_container( )->add_messages_from_bapi(
          it_bapi_messages         =  lt_return
          iv_determine_leading_msg = /iwbep/if_message_container=>gcs_leading_msg_search_option-first ).
      RAISE EXCEPTION TYPE zcx_product_busi_exception.
    ENDIF.

    ls_headerdata = VALUE bapi_epm_product_header( category      = ls_product-category
                                                   name          = ls_product-name
                                                   supplier_id   = ls_product-supplierid ).


    DATA(ls_headerdatax) = VALUE bapi_epm_product_headerx( product_id    = ls_product-productid
                                                           category      = ls_product-category
                                                           name          = ls_product-name
                                                           supplier_id   = ls_product-supplierid  ).

    CALL FUNCTION 'BAPI_EPM_PRODUCT_CHANGE'
      EXPORTING
        product_id  = ls_product_id
        headerdata  = ls_headerdata
        headerdatax = ls_headerdatax
*       PERSIST_TO_DB = ABAP_TRUE
      TABLES
*       CONVERSION_FACTORS =
*       CONVERSION_FACTORSX =
        return      = lt_return.


    IF lt_return IS NOT INITIAL.
      mo_context->get_message_container( )->add_messages_from_bapi(
      it_bapi_messages         = lt_return
      iv_determine_leading_msg =  /iwbep/if_message_container=>gcs_leading_msg_search_option-first ).
      RAISE EXCEPTION TYPE zcx_product_busi_exception.
    ENDIF.

    er_entity = ls_product.

  ENDMETHOD.