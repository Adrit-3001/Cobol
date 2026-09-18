       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 balance      PIC 9(5) VALUE 0.
    *>    01 B      PIC 9 VALUE 5.
    *>    01 C      PIC 9(3) VALUE 000.

       PROCEDURE DIVISION.
            DISPLAY "ENTER YOUR BALANCE: ".
            ACCEPT balance.
            IF balance > 10000
                DISPLAY "SUFFICIENT BALANCE."
            ELSE
                DISPLAY "LOW BALANCE."
            END-IF.
            STOP RUN.