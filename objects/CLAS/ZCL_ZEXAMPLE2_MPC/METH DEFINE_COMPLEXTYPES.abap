  method DEFINE_COMPLEXTYPES.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


 data:
       lo_annotation     type ref to /iwbep/if_mgw_odata_annotation,             "#EC NEEDED
       lo_complex_type   type ref to /iwbep/if_mgw_odata_cmplx_type,             "#EC NEEDED
       lo_property       type ref to /iwbep/if_mgw_odata_property.                "#EC NEEDED

***********************************************************************************************************************************
*   COMPLEX TYPE - CT_Address
***********************************************************************************************************************************
lo_complex_type = model->create_complex_type( 'CT_Address' ). "#EC NOTEXT

***********************************************************************************************************************************
*Properties
***********************************************************************************************************************************
lo_property = lo_complex_type->create_property( iv_property_name  = 'City' iv_abap_fieldname = 'CITY' ). "#EC NOTEXT
lo_property->set_label_from_text_element( iv_text_element_symbol = '001' iv_text_element_container = gc_incl_name ). "#EC NOTEXT
lo_property->set_type_edm_string( ).
lo_property->set_maxlength( iv_max_length = 40 ).
lo_property->set_semantic( 'city' ). "#EC NOTEXT
lo_property->set_creatable( abap_true ).
lo_property->set_updatable( abap_true ).
lo_property->set_sortable( abap_true ).
lo_property->set_nullable( abap_true ).
lo_property->set_filterable( abap_true ).
lo_property = lo_complex_type->create_property( iv_property_name  = 'PostalCode' iv_abap_fieldname = 'POSTALCODE' ). "#EC NOTEXT
lo_property->set_label_from_text_element( iv_text_element_symbol = '002' iv_text_element_container = gc_incl_name ). "#EC NOTEXT
lo_property->set_type_edm_string( ).
lo_property->set_maxlength( iv_max_length = 10 ).
lo_property->set_semantic( 'zip' ). "#EC NOTEXT
lo_property->set_creatable( abap_true ).
lo_property->set_updatable( abap_true ).
lo_property->set_sortable( abap_true ).
lo_property->set_nullable( abap_true ).
lo_property->set_filterable( abap_true ).
lo_property = lo_complex_type->create_property( iv_property_name  = 'Street' iv_abap_fieldname = 'STREET' ). "#EC NOTEXT
lo_property->set_label_from_text_element( iv_text_element_symbol = '003' iv_text_element_container = gc_incl_name ). "#EC NOTEXT
lo_property->set_type_edm_string( ).
lo_property->set_maxlength( iv_max_length = 60 ).
lo_property->set_semantic( 'street' ). "#EC NOTEXT
lo_property->set_creatable( abap_true ).
lo_property->set_updatable( abap_true ).
lo_property->set_sortable( abap_true ).
lo_property->set_nullable( abap_true ).
lo_property->set_filterable( abap_true ).
lo_property = lo_complex_type->create_property( iv_property_name  = 'Building' iv_abap_fieldname = 'BUILDING' ). "#EC NOTEXT
lo_property->set_label_from_text_element( iv_text_element_symbol = '004' iv_text_element_container = gc_incl_name ). "#EC NOTEXT
lo_property->set_type_edm_string( ).
lo_property->set_maxlength( iv_max_length = 10 ).
lo_property->set_creatable( abap_true ).
lo_property->set_updatable( abap_true ).
lo_property->set_sortable( abap_true ).
lo_property->set_nullable( abap_true ).
lo_property->set_filterable( abap_true ).
lo_property = lo_complex_type->create_property( iv_property_name  = 'Country' iv_abap_fieldname = 'COUNTRY' ). "#EC NOTEXT
lo_property->set_label_from_text_element( iv_text_element_symbol = '005' iv_text_element_container = gc_incl_name ). "#EC NOTEXT
lo_property->set_type_edm_string( ).
lo_property->set_maxlength( iv_max_length = 3 ).
lo_property->set_semantic( 'country' ). "#EC NOTEXT
lo_property->set_creatable( abap_true ).
lo_property->set_updatable( abap_true ).
lo_property->set_sortable( abap_true ).
lo_property->set_nullable( abap_true ).
lo_property->set_filterable( abap_true ).
lo_property = lo_complex_type->create_property( iv_property_name  = 'AddressType' iv_abap_fieldname = 'ADDRESSTYPE' ). "#EC NOTEXT
lo_property->set_label_from_text_element( iv_text_element_symbol = '006' iv_text_element_container = gc_incl_name ). "#EC NOTEXT
lo_property->set_type_edm_string( ).
lo_property->set_maxlength( iv_max_length = 2 ).
lo_property->set_creatable( abap_true ).
lo_property->set_updatable( abap_true ).
lo_property->set_sortable( abap_true ).
lo_property->set_nullable( abap_true ).
lo_property->set_filterable( abap_true ).
lo_complex_type->bind_structure( iv_structure_name = 'ZCL_ZEXAMPLE2_MPC=>CT_ADDRESS' ). "#EC NOTEXT
***********************************************************************************************************************************
*   COMPLEX TYPE - CT_String
***********************************************************************************************************************************
lo_complex_type = model->create_complex_type( 'CT_String' ). "#EC NOTEXT

***********************************************************************************************************************************
*Properties
***********************************************************************************************************************************
lo_property = lo_complex_type->create_property( iv_property_name  = 'String' iv_abap_fieldname = 'STRING' ). "#EC NOTEXT
lo_property->set_type_edm_string( ).
lo_property->set_creatable( abap_false ).
lo_property->set_updatable( abap_false ).
lo_property->set_sortable( abap_false ).
lo_property->set_nullable( abap_false ).
lo_property->set_filterable( abap_false ).
lo_complex_type->bind_structure( iv_structure_name = 'ZCL_ZEXAMPLE2_MPC=>CT_STRING' ). "#EC NOTEXT
  endmethod.