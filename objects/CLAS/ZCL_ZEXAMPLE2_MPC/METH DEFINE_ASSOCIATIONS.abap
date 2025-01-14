  method DEFINE_ASSOCIATIONS.
*&---------------------------------------------------------------------*
*&           Generated code for the MODEL PROVIDER BASE CLASS         &*
*&                                                                     &*
*&  !!!NEVER MODIFY THIS CLASS. IN CASE YOU WANT TO CHANGE THE MODEL  &*
*&        DO THIS IN THE MODEL PROVIDER SUBCLASS!!!                   &*
*&                                                                     &*
*&---------------------------------------------------------------------*




data:
lo_annotation     type ref to /iwbep/if_mgw_odata_annotation,                   "#EC NEEDED
lo_entity_type    type ref to /iwbep/if_mgw_odata_entity_typ,                   "#EC NEEDED
lo_association    type ref to /iwbep/if_mgw_odata_assoc,                        "#EC NEEDED
lo_ref_constraint type ref to /iwbep/if_mgw_odata_ref_constr,                   "#EC NEEDED
lo_assoc_set      type ref to /iwbep/if_mgw_odata_assoc_set,                    "#EC NEEDED
lo_nav_property   type ref to /iwbep/if_mgw_odata_nav_prop.                     "#EC NEEDED

***********************************************************************************************************************************
*   ASSOCIATIONS
***********************************************************************************************************************************

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_VH_Country_Contacts' "#EC NOTEXT
                            iv_left_type        = 'VH_Country' "#EC NOTEXT
                            iv_right_type       = 'Contact' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_VH_Country_Contacts_AssocSet'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'VH_CountrySet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'ContactSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_VH_Country_Contacts' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_VH_Country_BusinessPartners' "#EC NOTEXT
                            iv_left_type        = 'VH_Country' "#EC NOTEXT
                            iv_right_type       = 'BusinessPartner' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_VH_Country_BusinessPartners_AssocS'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'VH_CountrySet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'BusinessPartnerSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_VH_Country_BusinessPartners' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_VH_UnitQuantity_Products' "#EC NOTEXT
                            iv_left_type        = 'VH_UnitQuantity' "#EC NOTEXT
                            iv_right_type       = 'Product' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_VH_UnitQuantity_Products
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'Msehi'   iv_dependent_property = 'MeasureUnit' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_VH_UnitQuantity_Products_AssocSet'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'VH_UnitQuantitySet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'ProductSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_VH_UnitQuantity_Products' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_VH_UnitQuantity_SalesOrderLineItem' "#EC NOTEXT
                            iv_left_type        = 'VH_UnitQuantity' "#EC NOTEXT
                            iv_right_type       = 'SalesOrderLineItem' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_VH_UnitQuantity_SalesOrderLineItem
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'Msehi'   iv_dependent_property = 'QuantityUnit' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_VH_UnitQuantity_SalesOrderLineItem'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'VH_UnitQuantitySet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'SalesOrderLineItemSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_VH_UnitQuantity_SalesOrderLineItem' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_BusinessPartner_Contacts' "#EC NOTEXT
                            iv_left_type        = 'BusinessPartner' "#EC NOTEXT
                            iv_right_type       = 'Contact' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_BusinessPartner_Contacts
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'BusinessPartnerID'   iv_dependent_property = 'BusinessPartnerID' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_BusinessPartner_Contacts_AssocSet'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'BusinessPartnerSet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'ContactSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_BusinessPartner_Contacts' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_BusinessPartner_Products' "#EC NOTEXT
                            iv_left_type        = 'BusinessPartner' "#EC NOTEXT
                            iv_right_type       = 'Product' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_BusinessPartner_Products
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'BusinessPartnerID'   iv_dependent_property = 'SupplierID' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_BusinessPartner_Products_AssocSet'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'BusinessPartnerSet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'ProductSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_BusinessPartner_Products' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_BusinessPartner_SalesOrders' "#EC NOTEXT
                            iv_left_type        = 'BusinessPartner' "#EC NOTEXT
                            iv_right_type       = 'SalesOrder' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_BusinessPartner_SalesOrders
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'BusinessPartnerID'   iv_dependent_property = 'CustomerID' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_BusinessPartner_SalesOrders_AssocS'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'BusinessPartnerSet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'SalesOrderSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_BusinessPartner_SalesOrders' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_VH_UnitWeight_Products' "#EC NOTEXT
                            iv_left_type        = 'VH_UnitWeight' "#EC NOTEXT
                            iv_right_type       = 'Product' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_VH_UnitWeight_Products
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'Msehi'   iv_dependent_property = 'WeightUnit' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_VH_UnitWeight_Products_AssocSet'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'VH_UnitWeightSet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'ProductSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_VH_UnitWeight_Products' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_SalesOrder_SalesOrderLineItems' "#EC NOTEXT
                            iv_left_type        = 'SalesOrder' "#EC NOTEXT
                            iv_right_type       = 'SalesOrderLineItem' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_SalesOrder_SalesOrderLineItems
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'SalesOrderID'   iv_dependent_property = 'SalesOrderID' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_SalesOrder_SalesOrderLineItems_Ass'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'SalesOrderSet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'SalesOrderLineItemSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_SalesOrder_SalesOrderLineItems' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_VH_Currency_BusinessPartners' "#EC NOTEXT
                            iv_left_type        = 'VH_Currency' "#EC NOTEXT
                            iv_right_type       = 'BusinessPartner' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_VH_Currency_BusinessPartners
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'Waers'   iv_dependent_property = 'CurrencyCode' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_VH_Currency_BusinessPartners_Assoc'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'VH_CurrencySet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'BusinessPartnerSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_VH_Currency_BusinessPartners' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_VH_Currency_Products' "#EC NOTEXT
                            iv_left_type        = 'VH_Currency' "#EC NOTEXT
                            iv_right_type       = 'Product' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_VH_Currency_Products
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'Waers'   iv_dependent_property = 'CurrencyCode' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_VH_Currency_Products_AssocSet'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'VH_CurrencySet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'ProductSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_VH_Currency_Products' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_VH_Currency_SalesOrders' "#EC NOTEXT
                            iv_left_type        = 'VH_Currency' "#EC NOTEXT
                            iv_right_type       = 'SalesOrder' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_VH_Currency_SalesOrders
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'Waers'   iv_dependent_property = 'CurrencyCode' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_VH_Currency_SalesOrders_AssocSet'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'VH_CurrencySet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'SalesOrderSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_VH_Currency_SalesOrders' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_VH_Currency_SalesOrderLineItems' "#EC NOTEXT
                            iv_left_type        = 'VH_Currency' "#EC NOTEXT
                            iv_right_type       = 'SalesOrderLineItem' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_VH_Currency_SalesOrderLineItems
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'Waers'   iv_dependent_property = 'CurrencyCode' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_VH_Currency_SalesOrderLineItems_As'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'VH_CurrencySet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'SalesOrderLineItemSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_VH_Currency_SalesOrderLineItems' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_Product_SalesOrderLineItems' "#EC NOTEXT
                            iv_left_type        = 'Product' "#EC NOTEXT
                            iv_right_type       = 'SalesOrderLineItem' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_Product_SalesOrderLineItems
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'ProductID'   iv_dependent_property = 'ProductID' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_Product_SalesOrderLineItems_AssocS'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'ProductSet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'SalesOrderLineItemSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_Product_SalesOrderLineItems' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_VH_Language_Contacts' "#EC NOTEXT
                            iv_left_type        = 'VH_Language' "#EC NOTEXT
                            iv_right_type       = 'Contact' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_VH_Language_Contacts
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'Spras'   iv_dependent_property = 'Language' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_VH_Language_Contacts_AssocSet'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'VH_LanguageSet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'ContactSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_VH_Language_Contacts' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_VH_Category_Products' "#EC NOTEXT
                            iv_left_type        = 'VH_Category' "#EC NOTEXT
                            iv_right_type       = 'Product' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_VH_Category_Products
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'Category'   iv_dependent_property = 'Category' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_VH_Category_Products_AssocSet'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'VH_CategorySet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'ProductSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_VH_Category_Products' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_VH_Sex_Contacts' "#EC NOTEXT
                            iv_left_type        = 'VH_Sex' "#EC NOTEXT
                            iv_right_type       = 'Contact' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_VH_Sex_Contacts
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'Sex'   iv_dependent_property = 'Sex' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_VH_Sex_Contacts_AssocSet'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'VH_SexSet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'ContactSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_VH_Sex_Contacts' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_VH_ProductTypeCode_Products' "#EC NOTEXT
                            iv_left_type        = 'VH_ProductTypeCode' "#EC NOTEXT
                            iv_right_type       = 'Product' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_VH_ProductTypeCode_Products
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'TypeCode'   iv_dependent_property = 'TypeCode' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_VH_ProductTypeCode_Products_AssocS'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'VH_ProductTypeCodeSet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'ProductSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_VH_ProductTypeCode_Products' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_VH_BPRole_BusinessPartners' "#EC NOTEXT
                            iv_left_type        = 'VH_BPRole' "#EC NOTEXT
                            iv_right_type       = 'BusinessPartner' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_VH_BPRole_BusinessPartners
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'BpRole'   iv_dependent_property = 'BusinessPartnerRole' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_VH_BPRole_BusinessPartners_AssocSe'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'VH_BPRoleSet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'BusinessPartnerSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_VH_BPRole_BusinessPartners' ).                                 "#EC NOTEXT

 lo_association = model->create_association(
                            iv_association_name = 'Assoc_VH_UnitLength_Products' "#EC NOTEXT
                            iv_left_type        = 'VH_UnitLength' "#EC NOTEXT
                            iv_right_type       = 'Product' "#EC NOTEXT
                            iv_right_card       = 'M' "#EC NOTEXT
                            iv_left_card        = '1'  "#EC NOTEXT
                            iv_def_assoc_set    = abap_false ). "#EC NOTEXT
* Referential constraint for association - Assoc_VH_UnitLength_Products
lo_ref_constraint = lo_association->create_ref_constraint( ).
lo_ref_constraint->add_property( iv_principal_property = 'Msehi'   iv_dependent_property = 'DimUnit' ). "#EC NOTEXT
lo_assoc_set = model->create_association_set( iv_association_set_name  = 'Assoc_VH_UnitLength_Products_AssocSet'                         "#EC NOTEXT
                                              iv_left_entity_set_name  = 'VH_UnitLengthSet'              "#EC NOTEXT
                                              iv_right_entity_set_name = 'ProductSet'             "#EC NOTEXT
                                              iv_association_name      = 'Assoc_VH_UnitLength_Products' ).                                 "#EC NOTEXT


***********************************************************************************************************************************
*   NAVIGATION PROPERTIES
***********************************************************************************************************************************

* Navigation Properties for entity - BusinessPartner
lo_entity_type = model->get_entity_type( iv_entity_name = 'BusinessPartner' ). "#EC NOTEXT
lo_nav_property = lo_entity_type->create_navigation_property( iv_property_name  = 'ToSalesOrders' "#EC NOTEXT
                                                              iv_abap_fieldname = 'TOSALESORDERS' "#EC NOTEXT
                                                              iv_association_name = 'Assoc_BusinessPartner_SalesOrders' ). "#EC NOTEXT
lo_nav_property = lo_entity_type->create_navigation_property( iv_property_name  = 'ToContacts' "#EC NOTEXT
                                                              iv_abap_fieldname = 'TOCONTACTS' "#EC NOTEXT
                                                              iv_association_name = 'Assoc_BusinessPartner_Contacts' ). "#EC NOTEXT
lo_nav_property = lo_entity_type->create_navigation_property( iv_property_name  = 'ToProducts' "#EC NOTEXT
                                                              iv_abap_fieldname = 'TOPRODUCTS' "#EC NOTEXT
                                                              iv_association_name = 'Assoc_BusinessPartner_Products' ). "#EC NOTEXT
* Navigation Properties for entity - Product
lo_entity_type = model->get_entity_type( iv_entity_name = 'Product' ). "#EC NOTEXT
lo_nav_property = lo_entity_type->create_navigation_property( iv_property_name  = 'ToSupplier' "#EC NOTEXT
                                                              iv_abap_fieldname = 'TOSUPPLIER' "#EC NOTEXT
                                                              iv_association_name = 'Assoc_BusinessPartner_Products' ). "#EC NOTEXT
lo_nav_property = lo_entity_type->create_navigation_property( iv_property_name  = 'ToSalesOrderLineItems' "#EC NOTEXT
                                                              iv_abap_fieldname = 'TOSALESORDERLINEITEMS' "#EC NOTEXT
                                                              iv_association_name = 'Assoc_Product_SalesOrderLineItems' ). "#EC NOTEXT
* Navigation Properties for entity - SalesOrder
lo_entity_type = model->get_entity_type( iv_entity_name = 'SalesOrder' ). "#EC NOTEXT
lo_nav_property = lo_entity_type->create_navigation_property( iv_property_name  = 'ToBusinessPartner' "#EC NOTEXT
                                                              iv_abap_fieldname = 'TOBUSINESSPARTNER' "#EC NOTEXT
                                                              iv_association_name = 'Assoc_BusinessPartner_SalesOrders' ). "#EC NOTEXT
lo_nav_property = lo_entity_type->create_navigation_property( iv_property_name  = 'ToLineItems' "#EC NOTEXT
                                                              iv_abap_fieldname = 'TOLINEITEMS' "#EC NOTEXT
                                                              iv_association_name = 'Assoc_SalesOrder_SalesOrderLineItems' ). "#EC NOTEXT
* Navigation Properties for entity - SalesOrderLineItem
lo_entity_type = model->get_entity_type( iv_entity_name = 'SalesOrderLineItem' ). "#EC NOTEXT
lo_nav_property = lo_entity_type->create_navigation_property( iv_property_name  = 'ToProduct' "#EC NOTEXT
                                                              iv_abap_fieldname = 'TOPRODUCT' "#EC NOTEXT
                                                              iv_association_name = 'Assoc_Product_SalesOrderLineItems' ). "#EC NOTEXT
lo_nav_property = lo_entity_type->create_navigation_property( iv_property_name  = 'ToHeader' "#EC NOTEXT
                                                              iv_abap_fieldname = 'TOHEADER' "#EC NOTEXT
                                                              iv_association_name = 'Assoc_SalesOrder_SalesOrderLineItems' ). "#EC NOTEXT
* Navigation Properties for entity - Contact
lo_entity_type = model->get_entity_type( iv_entity_name = 'Contact' ). "#EC NOTEXT
lo_nav_property = lo_entity_type->create_navigation_property( iv_property_name  = 'ToBusinessPartner' "#EC NOTEXT
                                                              iv_abap_fieldname = 'TOBUSINESSPARTNER' "#EC NOTEXT
                                                              iv_association_name = 'Assoc_BusinessPartner_Contacts' ). "#EC NOTEXT
  endmethod.