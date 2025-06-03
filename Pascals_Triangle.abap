PARAMETERS: p_row TYPE i.

" nth row of Pascals Triangle

CLASS pascals_triangle DEFINITION.
  PUBLIC SECTION.
    TYPES: tt_row TYPE STANDARD TABLE OF i WITH DEFAULT KEY.
    CLASS-METHODS: get_row IMPORTING iv_row        TYPE i
                           RETURNING VALUE(rt_row) TYPE tt_row.
ENDCLASS.
CLASS pascals_triangle IMPLEMENTATION.
  METHOD get_row.

    APPEND 1 TO rt_row.

    DO.
      IF sy-index EQ iv_row + 1.
        EXIT.
      ENDIF.
      APPEND INITIAL LINE TO rt_row
             ASSIGNING FIELD-SYMBOL(<ls_row>).
      IF <ls_row> IS ASSIGNED.
        <ls_row> = rt_row[ sy-index ] * ( iv_row - sy-index + 1 ) / sy-index.
        UNASSIGN <ls_row>.
      ENDIF.
    ENDDO.

  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.

  cl_demo_output=>display( pascals_triangle=>get_row( p_row ) ).
