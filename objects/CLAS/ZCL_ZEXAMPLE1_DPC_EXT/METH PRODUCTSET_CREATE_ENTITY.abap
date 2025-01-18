  METHOD productset_create_entity.

    DATA:
      ls_product LIKE er_entity,
      lt_return  TYPE STANDARD TABLE OF bapiret2.

    io_data_provider->read_entry_data( IMPORTING es_data = ls_product ).

    DATA(ls_headerdata) = VALUE bapi_epm_product_header( product_id     = ls_product-productid
                                                         category       = ls_product-category
                                                         name           = ls_product-name
                                                         supplier_id    = ls_product-supplierid
                                                         measure_unit   = 'EA'
                                                         currency_code  = 'EUR'
                                                         tax_tarif_code = '1'
                                                         type_code      = 'PR'   ).

    CALL FUNCTION 'BAPI_EPM_PRODUCT_CREATE'
      EXPORTING
        headerdata = ls_headerdata
*       PERSIST_TO_DB = ABAP_TRUE
      TABLES
*       CONVERSION_FACTORS =
        return     = lt_return.

    IF lt_return IS NOT INITIAL.
      mo_context->get_message_container( )->add_messages_from_bapi(
             it_bapi_messages         = lt_return
             iv_determine_leading_msg =  /iwbep/if_message_container=>gcs_leading_msg_search_option-first ).
      RAISE EXCEPTION TYPE zcx_product_busi_exception.
    ENDIF.

    er_entity = ls_product.

  ENDMETHOD.