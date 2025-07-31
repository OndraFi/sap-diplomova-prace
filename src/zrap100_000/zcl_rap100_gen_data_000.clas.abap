CLASS zcl_rap100_gen_data_000 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_rap100_gen_data_000 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA lt_travel TYPE STANDARD TABLE OF zrap100_atrav000.
    DATA ls_travel TYPE zrap100_atrav000.

    " Smažeme stará data
    DELETE FROM zrap100_atrav000.

    " Vytvoříme 5 fiktivních rezervací
    DO 5 TIMES.

      CLEAR ls_travel.

      ls_travel-client         = cl_system_uuid=>create_uuid_x16_static( ).
      ls_travel-travel_id      = cl_system_uuid=>create_uuid_x16_static( ).
      ls_travel-agency_id      = cl_system_uuid=>create_uuid_x16_static( ).
      ls_travel-customer_id    = sy-mandt.
      ls_travel-begin_date     = sy-datum.
      ls_travel-end_date       = sy-datum + 7.
      ls_travel-booking_fee    = '50.00'.
      ls_travel-total_price    = '500.00'.
      ls_travel-currency_code  = 'EUR'.
      ls_travel-description    = |description { sy-index }|.
      ls_travel-overall_status = 'O'. "O = Open
      ls_travel-attachment     = 'none'.
      ls_travel-mime_type      = 'text/plain'.
      ls_travel-file_name      = |file{ sy-index }.txt|.
      ls_travel-created_by     = sy-uname.
      ls_travel-local_last_changed_by = sy-uname.

      APPEND ls_travel TO lt_travel.

    ENDDO.

    INSERT zrap100_atrav000 FROM TABLE @lt_travel.
    COMMIT WORK.

    out->write( |[RAP100] Testovací data úspěšně vložena do ZRAP100_ATRAV000 ({ lines( lt_travel ) } záznamů).| ).

  ENDMETHOD.

ENDCLASS.

