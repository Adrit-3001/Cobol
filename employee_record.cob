        IDENTIFICATION DIVISION.
        PROGRAM-ID. VARIABLES.

        DATA DIVISION.
        WORKING-STORAGE SECTION.

        01 EMPLOYEE.
            05 EMPLOYEE-ID      PIC 9(5).
            05 EMPLOYEE-NAME    PIC X(30).
            05 HOURS-WORKED     PIC 9(3)V99.
            05 HOURLY-RATE      PIC 9(5)V99.
            05 GROSS-PAY        PIC 9(7)V99.

        01 COMPANY.
            05 COMPANY-NAME      PIC X(30) VALUE "VALYE".
            05 COMPANY-CITY  PIC X(30) VALUE "VALUE".

        PROCEDURE DIVISION.
        MAIN.
            PERFORM GET-EMPLOYEE-INFO.
            PERFORM CALCULATE-GROSS-PAY.
            PERFORM DISPLAY-EMPLOYEE-INFO.
            STOP RUN.
        
        GET-EMPLOYEE-INFO.
            DISPLAY "Enter Employee ID: ".
            ACCEPT EMPLOYEE-ID.
            DISPLAY "Enter Employee Name: ".
            ACCEPT EMPLOYEE-NAME.
            DISPLAY "Enter Hours Worked: ".
            ACCEPT HOURS-WORKED.
            DISPLAY "Enter Hourly Rate: ".
            ACCEPT HOURLY-RATE.
            DISPLAY "Enter Company Name: ".
            ACCEPT COMPANY-NAME.
            DISPLAY "Enter Company City: ".
            ACCEPT COMPANY-CITY.
        
        CALCULATE-GROSS-PAY.
            COMPUTE GROSS-PAY = HOURS-WORKED * HOURLY-RATE.
        
        DISPLAY-EMPLOYEE-INFO.
            DISPLAY X"0A" "----------- COMPANY INFORMATION ----------".
            DISPLAY "Company Name: " COMPANY-NAME.
            DISPLAY "Company City: " COMPANY-CITY.
            DISPLAY X"0A" "----------- EMPLOYEE RECORD ----------".
            DISPLAY "Employee ID: " EMPLOYEE-ID.
            DISPLAY "Employee Name: " EMPLOYEE-NAME.
            DISPLAY "Hours Worked: " HOURS-WORKED.
            DISPLAY "Hourly Rate: " HOURLY-RATE.
            DISPLAY "Gross Pay: " GROSS-PAY.