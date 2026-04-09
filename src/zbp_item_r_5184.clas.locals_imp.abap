CLASS lhc_Item DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Item RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Item RESULT result.

    METHODS setItemDate FOR DETERMINE ON SAVE
      IMPORTING keys FOR Item~setItemDate.

    METHODS setItemNumber FOR DETERMINE ON SAVE
      IMPORTING keys FOR Item~setItemNumber.

    METHODS validateDate FOR VALIDATE ON SAVE
      IMPORTING keys FOR Item~validateDate.

ENDCLASS.

CLASS lhc_Item IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD setItemDate.
  ENDMETHOD.

  METHOD setItemNumber.
  ENDMETHOD.

  METHOD validateDate.
  ENDMETHOD.

ENDCLASS.
