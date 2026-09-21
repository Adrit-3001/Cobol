        IDENTIFICATION DIVISION.
        PROGRAM-ID. VARIABLES.

        ENVIRONMENT DIVISION.
        INPUT-OUTPUT SECTION.
        FILE-CONTROL.
            SELECT EMPLOYEE-FILE
                ASSIGN TO "employees.dat"
                ORGANIZATION IS LINE SEQUENTIAL.

            SELECT PAYROLL-FILE
                ASSIGN TO "payroll.dat"
                ORGANIZATION IS LINE SEQUENTIAL.

        DATA DIVISION.
        FILE SECTION.

        FD EMPLOYEE-FILE.
        01 EMPLOYEE-RECORD.
            05 EMPLOYEE-ID    PIC 9(5).
            05 EMPLOYEE-NAME  PIC X(30).
            05 HOURS-WORKED   PIC 9(3)V99.
            05 HOURLY-RATE    PIC 9(2)V99.

        FD PAYROLL-FILE.
        01 PAYROLL-RECORD.
            05 PAYROLL-ID    PIC 9(5).
            05 PAYROLL-NAME  PIC X(30).
            05 PAYROLL-GROSS-PAY PIC 9(7)V99.

        WORKING-STORAGE SECTION.
        01 EOF-FILE PIC X VALUE "N".
            88 EOF VALUE "Y".
        01 GROSS-PAY PIC 9(7)V99.

        PROCEDURE DIVISION.
        MAIN.
            OPEN INPUT EMPLOYEE-FILE
                 OUTPUT PAYROLL-FILE
            PERFORM UNTIL EOF
                READ EMPLOYEE-FILE
                    AT END
                        SET EOF TO TRUE
                    NOT AT END
                        COMPUTE GROSS-PAY = HOURS-WORKED * HOURLY-RATE
                        MOVE EMPLOYEE-ID TO PAYROLL-ID
                        MOVE EMPLOYEE-NAME TO PAYROLL-NAME
                        MOVE GROSS-PAY TO PAYROLL-GROSS-PAY
                        WRITE PAYROLL-RECORD
                        PERFORM RECORDS-INFO
                        
                END-READ
            END-PERFORM
            CLOSE EMPLOYEE-FILE
                PAYROLL-FILE
            STOP RUN.
        RECORDS-INFO.
            DISPLAY X"0A" "----------- EMPLOYEE RECORD ----------"
            DISPLAY "Employee ID: " EMPLOYEE-ID
            DISPLAY "Employee Name: " EMPLOYEE-NAME
            DISPLAY "Hours Worked: " HOURS-WORKED
            DISPLAY "Hourly Rate: " HOURLY-RATE
            DISPLAY "Gross Pay: " GROSS-PAY.