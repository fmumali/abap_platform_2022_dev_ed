  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    CALL METHOD super->constructor
      EXPORTING
        previous               = previous
        message_container      = message_container
        http_status_code       = http_status_code
        http_header_parameters = http_header_parameters
        sap_note_id            = sap_note_id
        msg_code               = msg_code
        exception_category     = exception_category
        entity_type            = entity_type
        message                = message
        message_unlimited      = message_unlimited
        filter_param           = filter_param
        operation_no           = operation_no.
    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.
  ENDMETHOD.