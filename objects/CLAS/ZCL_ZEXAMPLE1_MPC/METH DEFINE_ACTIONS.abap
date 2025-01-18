  method DEFINE_ACTIONS.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*


data:
lo_action         type ref to /iwbep/if_mgw_odata_action,                 "#EC NEEDED
lo_parameter      type ref to /iwbep/if_mgw_odata_parameter.              "#EC NEEDED

***********************************************************************************************************************************
*   ACTION - DetermineHeaviestProduct
***********************************************************************************************************************************

lo_action = model->create_action( 'DetermineHeaviestProduct' ).  "#EC NOTEXT
*Set return entity type
lo_action->set_return_entity_type( 'Product' ). "#EC NOTEXT
*Set HTTP method GET or POST
lo_action->set_http_method( 'GET' ). "#EC NOTEXT
*Set the action for entity
lo_action->set_action_for( 'Product' ).        "#EC NOTEXT
* Set return type multiplicity
lo_action->set_return_multiplicity( 'M' ). "#EC NOTEXT
***********************************************************************************************************************************
* Parameters
***********************************************************************************************************************************

lo_parameter = lo_action->create_input_parameter( iv_parameter_name = 'Category'    iv_abap_fieldname = 'CATEGORY' ). "#EC NOTEXT
lo_parameter->set_label_from_text_element( iv_text_element_symbol = '009' iv_text_element_container = gc_incl_name ). "#EC NOTEXT
lo_parameter->/iwbep/if_mgw_odata_property~set_type_edm_string( ).
lo_parameter->set_maxlength( iv_max_length = 40 ). "#EC NOTEXT
lo_action->bind_input_structure( iv_structure_name  = 'ZCL_ZEXAMPLE1_MPC=>TS_DETERMINEHEAVIESTPRODUCT' ). "#EC NOTEXT
  endmethod.