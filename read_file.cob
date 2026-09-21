        IDENTIFICATION DIVISION.
        PROGRAM-ID. VARIABLES.

        ENVIRONMENT DIVISION.
        INPUT-OUTPUT SECTION.
        FILE-CONTROL.
            SELECT EMPLOYEE-FILE
                ASSIGN TO "employees.dat"
                ORGANIZATION IS LINE SEQUENTIAL.

        DATA DIVISION.
        FILE SECTION.

        FD EMPLOYEE-FILE.
        01 EMPLOYEE-RECORD PIC X(50).

        WORKING-STORAGE SECTION.
        01 EOF-FILE PIC X VALUE "N".
            88 EOF VALUE "Y".

        PROCEDURE DIVISION.
        MAIN.
            OPEN INPUT EMPLOYEE-FILE
            PERFORM UNTIL EOF
                READ EMPLOYEE-FILE
                    AT END
                        SET EOF TO TRUE
                    NOT AT END
                        DISPLAY EMPLOYEE-RECORD
                END-READ
            END-PERFORM
            CLOSE EMPLOYEE-FILE
            STOP RUN.