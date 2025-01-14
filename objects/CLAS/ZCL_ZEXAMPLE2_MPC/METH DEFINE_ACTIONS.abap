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
*   ACTION - RegenerateAllData
***********************************************************************************************************************************

lo_action = model->create_action( 'RegenerateAllData' ).  "#EC NOTEXT
*Set return complex type
lo_action->set_return_complex_type( 'CT_String' ). "#EC NOTEXT
*Set HTTP method GET or POST
lo_action->set_http_method( 'POST' ). "#EC NOTEXT
* Set return type multiplicity
lo_action->set_return_multiplicity( '1' ). "#EC NOTEXT
***********************************************************************************************************************************
* Parameters
***********************************************************************************************************************************

lo_parameter = lo_action->create_input_parameter( iv_parameter_name = 'NoOfSalesOrders'    iv_abap_fieldname = 'NOOFSALESORDERS' ). "#EC NOTEXT
lo_parameter->/iwbep/if_mgw_odata_property~set_type_edm_int32( ).
lo_action->bind_input_structure( iv_structure_name  = 'ZCL_ZEXAMPLE2_MPC=>TS_REGENERATEALLDATA' ). "#EC NOTEXT
***********************************************************************************************************************************
*   ACTION - SalesOrder_Confirm
***********************************************************************************************************************************

lo_action = model->create_action( 'SalesOrder_Confirm' ).  "#EC NOTEXT
*Set return entity type
lo_action->set_return_entity_type( 'SalesOrder' ). "#EC NOTEXT
*Set HTTP method GET or POST
lo_action->set_http_method( 'POST' ). "#EC NOTEXT
*Set the action for entity
lo_action->set_action_for( 'SalesOrder' ).        "#EC NOTEXT
* Set return type multiplicity
lo_action->set_return_multiplicity( '1' ). "#EC NOTEXT
***********************************************************************************************************************************
* Parameters
***********************************************************************************************************************************

lo_parameter = lo_action->create_input_parameter( iv_parameter_name = 'SalesOrderID'    iv_abap_fieldname = 'SALESORDERID' ). "#EC NOTEXT
lo_parameter->/iwbep/if_mgw_odata_property~set_type_edm_string( ).
lo_parameter->set_maxlength( iv_max_length = 10 ). "#EC NOTEXT
lo_action->bind_input_structure( iv_structure_name  = 'ZCL_ZEXAMPLE2_MPC=>TS_SALESORDER_CONFIRM' ). "#EC NOTEXT
***********************************************************************************************************************************
*   ACTION - SalesOrder_Cancel
***********************************************************************************************************************************

lo_action = model->create_action( 'SalesOrder_Cancel' ).  "#EC NOTEXT
*Set return entity type
lo_action->set_return_entity_type( 'SalesOrder' ). "#EC NOTEXT
*Set HTTP method GET or POST
lo_action->set_http_method( 'POST' ). "#EC NOTEXT
*Set the action for entity
lo_action->set_action_for( 'SalesOrder' ).        "#EC NOTEXT
* Set return type multiplicity
lo_action->set_return_multiplicity( '1' ). "#EC NOTEXT
***********************************************************************************************************************************
* Parameters
***********************************************************************************************************************************

lo_parameter = lo_action->create_input_parameter( iv_parameter_name = 'SalesOrderID'    iv_abap_fieldname = 'SALESORDERID' ). "#EC NOTEXT
lo_parameter->/iwbep/if_mgw_odata_property~set_type_edm_string( ).
lo_parameter->set_maxlength( iv_max_length = 10 ). "#EC NOTEXT
lo_action->bind_input_structure( iv_structure_name  = 'ZCL_ZEXAMPLE2_MPC=>TS_SALESORDER_CANCEL' ). "#EC NOTEXT
***********************************************************************************************************************************
*   ACTION - SalesOrder_InvoiceCreated
***********************************************************************************************************************************

lo_action = model->create_action( 'SalesOrder_InvoiceCreated' ).  "#EC NOTEXT
*Set return entity type
lo_action->set_return_entity_type( 'SalesOrder' ). "#EC NOTEXT
*Set HTTP method GET or POST
lo_action->set_http_method( 'POST' ). "#EC NOTEXT
*Set the action for entity
lo_action->set_action_for( 'SalesOrder' ).        "#EC NOTEXT
* Set return type multiplicity
lo_action->set_return_multiplicity( '1' ). "#EC NOTEXT
***********************************************************************************************************************************
* Parameters
***********************************************************************************************************************************

lo_parameter = lo_action->create_input_parameter( iv_parameter_name = 'SalesOrderID'    iv_abap_fieldname = 'SALESORDERID' ). "#EC NOTEXT
lo_parameter->/iwbep/if_mgw_odata_property~set_type_edm_string( ).
lo_parameter->set_maxlength( iv_max_length = 10 ). "#EC NOTEXT
lo_action->bind_input_structure( iv_structure_name  = 'ZCL_ZEXAMPLE2_MPC=>TS_SALESORDER_INVOICECREATED' ). "#EC NOTEXT
***********************************************************************************************************************************
*   ACTION - SalesOrder_GoodsIssueCreated
***********************************************************************************************************************************

lo_action = model->create_action( 'SalesOrder_GoodsIssueCreated' ).  "#EC NOTEXT
*Set return entity type
lo_action->set_return_entity_type( 'SalesOrder' ). "#EC NOTEXT
*Set HTTP method GET or POST
lo_action->set_http_method( 'POST' ). "#EC NOTEXT
*Set the action for entity
lo_action->set_action_for( 'SalesOrder' ).        "#EC NOTEXT
* Set return type multiplicity
lo_action->set_return_multiplicity( '1' ). "#EC NOTEXT
***********************************************************************************************************************************
* Parameters
***********************************************************************************************************************************

lo_parameter = lo_action->create_input_parameter( iv_parameter_name = 'SalesOrderID'    iv_abap_fieldname = 'SALESORDERID' ). "#EC NOTEXT
lo_parameter->/iwbep/if_mgw_odata_property~set_type_edm_string( ).
lo_parameter->set_maxlength( iv_max_length = 10 ). "#EC NOTEXT
lo_action->bind_input_structure( iv_structure_name  = 'ZCL_ZEXAMPLE2_MPC=>TS_SALESORDER_GOODSISSUECREATE' ). "#EC NOTEXT
  endmethod.