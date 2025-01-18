CLASS zcx_product_busi_exception DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cx_mgw_busi_exception
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor
      IMPORTING
        !textid                 LIKE if_t100_message=>t100key OPTIONAL
        !previous               LIKE previous OPTIONAL
        !message_container      TYPE REF TO /iwbep/if_message_container OPTIONAL
        !http_status_code       TYPE /iwbep/mgw_http_status_code OPTIONAL
        !http_header_parameters TYPE /iwbep/t_mgw_name_value_pair OPTIONAL
        !sap_note_id            TYPE /iwbep/mgw_sap_note_id OPTIONAL
        !msg_code               TYPE string OPTIONAL
        !exception_category     TYPE ty_exception_category OPTIONAL
        !entity_type            TYPE string OPTIONAL
        !message                TYPE bapi_msg OPTIONAL
        !message_unlimited      TYPE string OPTIONAL
        !filter_param           TYPE string OPTIONAL
        !operation_no           TYPE i OPTIONAL .