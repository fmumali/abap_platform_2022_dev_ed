  METHOD productset_get_entityset.

    DATA: lt_selparamproductid  TYPE STANDARD TABLE OF bapi_epm_product_id_range,
          lt_selparamcategories TYPE STANDARD TABLE OF bapi_epm_product_categ_range,
          lt_headerdata         TYPE STANDARD TABLE OF bapi_epm_product_header,
          lv_maxrows            TYPE bapi_epm_max_rows.

    "retrieve a reference to the central filter object and get filter range tables
    lv_maxrows-bapimaxrow = 0.
    DATA(lv_start) = 1.
    DATA(lv_top)  = io_tech_request_context->get_top( ).
    DATA(lv_skip) = io_tech_request_context->get_skip( ).
    DATA(lr_filter) = io_tech_request_context->get_filter( ).
    DATA(lt_filter_so) = lr_filter->get_filter_select_options( ).
    DATA(lt_order) = io_tech_request_context->get_orderby( ).
    DATA(lv_has_inlinecount) = io_tech_request_context->has_inlinecount( ).

    "copy entries of PRODUCT ID select-options table into local ranges table
    lt_selparamproductid =  VALUE #( FOR ls_filter_so IN lt_filter_so WHERE   ( property EQ 'PRODUCTID' )
                                     FOR ls_so IN ls_filter_so-select_options ( sign = ls_so-sign option = ls_so-option low = ls_so-low high = ls_so-high ) ).

    lt_selparamcategories =  VALUE #( FOR ls_filter_so IN lt_filter_so WHERE   ( property EQ 'CATEGORY' )
                                      FOR ls_so IN ls_filter_so-select_options ( sign = ls_so-sign option = ls_so-option low = ls_so-low high = ls_so-high ) ).


    "Handover local ranges table when calling the BAPI for filter operation when retrieving products
    CALL FUNCTION 'BAPI_EPM_PRODUCT_GET_LIST'
      TABLES
        headerdata         = lt_headerdata
        selparamproductid  = lt_selparamproductid
        selparamcategories = lt_selparamcategories.

    lv_start = COND #( WHEN lv_skip IS NOT INITIAL THEN lv_skip + 1 ).

    DATA(lv_end) = COND i( WHEN lv_top IS NOT INITIAL THEN lv_top + lv_start - 1   ELSE lines( lt_headerdata ) ).

    lv_maxrows-bapimaxrow = COND #( WHEN lv_top IS NOT INITIAL AND lv_has_inlinecount EQ abap_false THEN lv_top + lv_skip ).

    es_response_context-inlinecount = COND #( WHEN lv_has_inlinecount EQ abap_true THEN  lines( lt_headerdata ) ).

    "Fill the product entityset with retrieved product records
    et_entityset   = VALUE #( FOR header IN lt_headerdata FROM lv_start TO lv_end ( productid  = header-product_id
                                                                                    category   = header-category
                                                                                    name       = header-name
                                                                                    supplierid = header-supplier_id )  ).

  ENDMETHOD.