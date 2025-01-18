  METHOD if_oo_adt_classrun~main.

   out->write( |ABAP Cheat Sheet Example: Grouping Internal Tables\n\n| ).

  SELECT * FROM SFLIGHT INTO TABLE @DATA(LT_FLIGHTS).

      out->write( |1) Representative Binding\n| ).
    out->write( |1a) Grouping by one column\n| ).

    LOOP AT LT_FLIGHTS INTO DATA(ls_flight)
                      GROUP BY ls_flight-carrid.
      out->write( ls_flight-carrid ).

    ENDLOOP.



  ENDMETHOD.