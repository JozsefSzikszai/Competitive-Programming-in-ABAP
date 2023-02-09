PARAMETERS: p_num TYPE i.

CLASS fizzbuzz DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS: generate IMPORTING iv_number        TYPE i
                            RETURNING VALUE(rv_result) TYPE string.
ENDCLASS.

CLASS fizzbuzz IMPLEMENTATION.
  METHOD generate.

    rv_result = COND #( WHEN iv_number MOD 15 = 0 THEN |fizzbuzz|
                        WHEN iv_number MOD 3 = 0  THEN |fizz|
                        WHEN iv_number MOD 5 = 0  THEN |buzz|
                        ELSE iv_number ).

  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.

  cl_demo_output=>display( fizzbuzz=>generate( p_num ) ).
