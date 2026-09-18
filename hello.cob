       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 num      PIC 9(5) VALUE 0.
       01 i      PIC 99 VALUE 1.
       01 RESULT      PIC 9(3) VALUE 000.

       PROCEDURE DIVISION.
            DISPLAY "ENTER num: ".
            ACCEPT num.
            IF num >= 10
                DISPLAY "not single digit."
                STOP RUN
            ELSE
                PERFORM UNTIL i > 10
                    COMPUTE RESULT = num * i
                    DISPLAY RESULT
                    ADD 1 TO i
                END-PERFORM
            END-IF.
            STOP RUN.