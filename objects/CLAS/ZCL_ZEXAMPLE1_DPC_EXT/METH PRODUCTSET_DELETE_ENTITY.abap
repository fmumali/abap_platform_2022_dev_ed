  METHOD productset_delete_entity.

    DATA: ls_entity     TYPE zcl_zexample1_mpc=>ts_product,
          ls_product_id TYPE bapi_epm_product_id,
          lt_return     TYPE STANDARD TABLE OF bapiret2.

    io_tech_request_context->get_converted_keys( IMPORTING es_key_values = ls_entity ).

    ls_product_id-product_id = ls_entity-productid.

    CALL FUNCTION 'BAPI_EPM_PRODUCT_DELETE'
      EXPORTING
        product_id = ls_product_id
*       PERSIST_TO_DB  = ABAP_TRUE
      TABLES
        return     = lt_return.

    IF lt_return IS NOT INITIAL.

      mo_context->get_message_container(  )->add_messages_from_bapi(
      it_bapi_messages      = lt_return
      iv_determine_leading_msg = /iwbep/if_message_container=>gcs_leading_msg_search_option-first ).

      RAISE EXCEPTION TYPE zcx_product_busi_exception.

    ENDIF.


  ENDMETHOD.