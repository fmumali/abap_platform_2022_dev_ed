  METHOD define.

    DATA: lo_entity_type TYPE REF TO /iwbep/if_mgw_odata_entity_typ,
          lo_property    TYPE REF TO /iwbep/if_mgw_odata_property.

    super->define( ).

    lo_entity_type = model->get_entity_type( 'Product' ).
    lo_entity_type->set_is_media( ).
    lo_property = lo_entity_type->get_property( 'PictureURI' ).
    lo_property->set_as_content_source( ).
    lo_property = lo_entity_type->get_property( 'PictureMIMEType' ).
    lo_property->set_as_content_type( ).

  ENDMETHOD.