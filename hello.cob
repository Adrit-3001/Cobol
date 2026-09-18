       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 A      PIC 99 VALUE 10.
       01 B      PIC 9 VALUE 5.
       01 C      PIC 9(3) VALUE 000.

       PROCEDURE DIVISION.
           COMPUTE C = A + B.
           DISPLAY "ADdition is: " C.
           COMPUTE C = A - B.
           DISPLAY "Subtraction is: " C.
           COMPUTE C = A * B.
           DISPLAY "Multiplication is: " C.
           COMPUTE C = A / B.
           DISPLAY "Division is: " C.
           STOP RUN.