  method VH_UNITLENGTHSET_GET_ENTITYSET.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'VH_UNITLENGTHSET_GET_ENTITYSET'.
  endmethod.