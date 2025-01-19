  METHOD /iwbep/if_mgw_appl_srv_runtime~execute_action.

    DATA: lv_action_name     TYPE /iwbep/mgw_tech_name,
          lt_product         TYPE zcl_zexample1_mpc=>tt_product,
          ls_product         TYPE zcl_zexample1_mpc=>ts_product,
          lt_headerdata      TYPE TABLE OF bapi_epm_product_header,
          lt_headerdata_orig TYPE TABLE OF bapi_epm_product_header,
          lt_categories      TYPE TABLE OF bapi_epm_product_categ_range,
          lv_max_weight      TYPE snwd_weight_measure,
          lv_output          TYPE snwd_weight_measure.

    CONSTANTS: cv_weight_unit_kg TYPE snwd_weight_unit VALUE 'KG'.

    lv_action_name = io_tech_request_context->get_function_import_name(  ).

    CASE lv_action_name.

      WHEN 'DetermineHeaviestProduct'.
*      Put category filter together
        io_tech_request_context->get_converted_parameters( IMPORTING  es_parameter_values = ls_product ).

        IF NOT ls_product-category IS INITIAL.

          APPEND VALUE bapi_epm_product_categ_range( low    = ls_product-category
                                                     option = 'EQ'
                                                     sign   = 'I')  TO lt_categories.
        ENDIF.

*      Fetch filtered products
        CALL FUNCTION 'BAPI_EPM_PRODUCT_GET_LIST'
          TABLES
            headerdata         = lt_headerdata_orig
            selparamcategories = lt_categories.

*       Convert all weights to KG and determine the highest weight value

        CLEAR lv_max_weight.

        LOOP AT lt_headerdata_orig ASSIGNING FIELD-SYMBOL(<fs_headerdata>).

          CALL FUNCTION 'UNIT_CONVERSION_SIMPLE'
            EXPORTING
              input                = <fs_headerdata>-weight_measure
              unit_in              = <fs_headerdata>-weight_unit
              unit_out             = cv_weight_unit_kg
            IMPORTING
              output               = lv_output
            EXCEPTIONS
              conversion_not_found = 1
              division_by_zero     = 2
              input_invalid        = 3
              output_invalid       = 4
              overflow             = 5
              type_invalid         = 6
              units_missing        = 7
              unit_in_not_found    = 8
              unit_out_not_found   = 9
              OTHERS               = 10.

          IF sy-subrc <> 0.
            CONTINUE.
          ENDIF.


          <fs_headerdata>-weight_measure = lv_output.
          <fs_headerdata>-weight_unit = cv_weight_unit_kg.

          APPEND <fs_headerdata> TO lt_headerdata.


          IF lv_output > lv_max_weight.
            lv_max_weight = lv_output.
          ENDIF.

        ENDLOOP.

* Put the product(s) with the highest weight into the result table

        SORT lt_headerdata_orig BY product_id.


        LOOP AT lt_headerdata ASSIGNING <fs_headerdata> WHERE weight_measure = lv_max_weight.

          READ TABLE lt_headerdata_orig INTO DATA(ls_headerdata) WITH KEY product_id = <fs_headerdata>-product_id BINARY SEARCH.

          APPEND VALUE zcl_zexample1_mpc=>ts_product( productid     = ls_headerdata-product_id
                                                      name          = ls_headerdata-name
                                                      category      = ls_headerdata-category
                                                      supplierid    = ls_headerdata-supplier_id
                                                      weightmeasure = ls_headerdata-weight_measure
                                                      weightunit    = ls_headerdata-weight_unit     ) TO lt_product.
        ENDLOOP.

        copy_data_to_ref(
            EXPORTING
                is_data = lt_product
            CHANGING
                cr_data = er_data ).


      WHEN OTHERS.

        CALL METHOD super->/iwbep/if_mgw_appl_srv_runtime~execute_action
          EXPORTING
            iv_action_name          = iv_action_name
            it_parameter            = it_parameter
            io_tech_request_context = io_tech_request_context
          IMPORTING
            er_data                 = er_data.

    ENDCASE.

  ENDMETHOD.