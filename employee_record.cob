        IDENTIFICATION DIVISION.
        PROGRAM-ID. VARIABLES.

        DATA DIVISION.
        WORKING-STORAGE SECTION.

        01 NUMBER-OF-EMPLOYEES PIC 9(3) VALUE 0.
        01 I PIC 9(3) VALUE 1.

        01 EMPLOYEES.
            05 EMPLOYEE OCCURS 1 TO 999 TIMES DEPENDING ON NUMBER-OF-EMPLOYEES.
                10 EMPLOYEE-ID      PIC 9(5).
                10 EMPLOYEE-NAME    PIC X(30).
                10 HOURS-WORKED     PIC 9(3)V99.
                10 HOURLY-RATE      PIC 9(5)V99.
                10 GROSS-PAY        PIC 9(7)V99.

        01 COMPANY.
            05 COMPANY-NAME      PIC X(30) VALUE "TD Bank".
            05 COMPANY-CITY  PIC X(30) VALUE "Toronto".

        PROCEDURE DIVISION.
        MAIN.
            PERFORM GET-EMPLOYEE-INFO.
            PERFORM CALCULATE-GROSS-PAY.
            PERFORM DISPLAY-EMPLOYEE-INFO.
            STOP RUN.
        
        GET-EMPLOYEE-INFO.
            DISPLAY "Enter Number of Employees: "
            ACCEPT NUMBER-OF-EMPLOYEES
            PERFORM UNTIL I > NUMBER-OF-EMPLOYEES
                DISPLAY "Enter Employee" I " ID: "
                ACCEPT EMPLOYEE-ID(I)
                DISPLAY "Enter Employee " I " Name: "
                ACCEPT EMPLOYEE-NAME(I)
                DISPLAY "Enter Hours Worked: "
                ACCEPT HOURS-WORKED(I)
                DISPLAY "Enter Hourly Rate: "
                ACCEPT HOURLY-RATE(I)
            ADD 1 TO I
            END-PERFORM.

        CALCULATE-GROSS-PAY.
            COMPUTE I = 1
            PERFORM UNTIL I > NUMBER-OF-EMPLOYEES
                COMPUTE GROSS-PAY(I) = HOURS-WORKED(I) * HOURLY-RATE(I)
            ADD 1 TO I
            END-PERFORM.
        
        DISPLAY-EMPLOYEE-INFO.
            DISPLAY X"0A" "----------- COMPANY INFORMATION ----------".
            DISPLAY "Company Name: " COMPANY-NAME.
            DISPLAY "Company City: " COMPANY-CITY.
            
            COMPUTE I = 1
            PERFORM UNTIL I > NUMBER-OF-EMPLOYEES
                DISPLAY X"0A" "----------- EMPLOYEE " I " RECORD ----------"
                DISPLAY "Employee ID: " EMPLOYEE-ID(I)
                DISPLAY "Employee Name: " EMPLOYEE-NAME(I)
                DISPLAY "Hours Worked: " HOURS-WORKED(I)
                DISPLAY "Hourly Rate: " HOURLY-RATE(I)
                DISPLAY "Gross Pay: " GROSS-PAY(I)
            ADD 1 TO I
            END-PERFORM.