  METHOD productset_get_entity.

    DATA: ls_entity     LIKE er_entity,
          ls_product_id TYPE bapi_epm_product_id,
          ls_supplierdd TYPE bapi_epm_bp_id,
          ls_headerdata TYPE bapi_epm_product_header.

    io_tech_Request_context->get_converted_keys( IMPORTING es_key_values =  ls_entity ).

    ls_product_id-product_id = ls_entity-productid.

    CALL FUNCTION 'BAPI_EPM_PRODUCT_GET_DETAIL'
      EXPORTING
        product_id = ls_product_id
      IMPORTING
        headerdata = ls_headerdata.

    er_entity-productid  = ls_headerdata-product_id.
    er_entity-category   = ls_headerdata-category.
    er_entity-name       = ls_headerdata-name.
    er_entity-supplierid = ls_headerdata-supplier_id.

  ENDMETHOD.