  METHOD supplierset_get_entityset.

    DATA: lt_bpheaderdata TYPE STANDARD TABLE OF bapi_epm_bp_header.

    CALL FUNCTION 'BAPI_EPM_BP_GET_LIST'
      TABLES
        bpheaderdata = lt_bpheaderdata.

    et_entityset = VALUE #(  FOR header IN lt_bpheaderdata ( supplierid   = header-bp_id
                                                             suppliername = header-company_name ) ).
  ENDMETHOD.