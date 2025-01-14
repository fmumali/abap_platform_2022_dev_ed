  METHOD supplierset_get_entity.

    DATA: ls_entity         LIKE er_entity,
          ls_bp_id          TYPE bapi_epm_bp_id,
          ls_headerdata     TYPE bapi_epm_bp_header,
          ls_product        TYPE zcl_zexample1_mpc=>ts_product,
          ls_product_id     TYPE bapi_epm_product_id,
          ls_prd_headerdata TYPE bapi_epm_product_header.

    DATA(lv_source_entity_set_name) = io_tech_request_context->get_source_entity_set_name( ).

    IF lv_source_entity_set_name EQ 'ProductSet'.

      io_tech_request_context->get_converted_source_keys( IMPORTING es_key_values = ls_product ).

      ls_product_id-product_id = ls_product-productid.

      CALL FUNCTION 'BAPI_EPM_PRODUCT_GET_DETAIL'
        EXPORTING
          product_id = ls_product_id
        IMPORTING
          headerdata = ls_prd_headerdata.

      ls_bp_id-bp_id = ls_prd_headerdata-supplier_id.

    ELSE.

      io_tech_request_context->get_converted_keys( IMPORTING   es_key_values = ls_entity ).
      ls_bp_id-bp_id = ls_entity-supplierid.

    ENDIF.

    CALL FUNCTION 'BAPI_EPM_BP_GET_DETAIL'
      EXPORTING
        bp_id      = ls_bp_id
      IMPORTING
        headerdata = ls_headerdata.

    er_entity-supplierid   = ls_headerdata-bp_id.
    er_entity-suppliername = ls_headerdata-company_name.

  ENDMETHOD.