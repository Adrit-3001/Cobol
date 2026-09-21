        IDENTIFICATION DIVISION.
        PROGRAM-ID. VARIABLES.

        DATA DIVISION.
        WORKING-STORAGE SECTION.

        01 CUSTOMER-NAME PIC X(30).
        01 AGE PIC 9(3).
        01 ANNUAL-INCOME PIC 9(7)V99.
        01 CREDIT-SCORE PIC 9(3).
        01 EMPLOYMENT-STATUS PIC X.
            88 EMPLOYED VALUE "E".
            88 UNEMPLOYED VALUE "U".
        01 LOAN-STATUS PIC X.
            88 APPROVED VALUE "A".
            88 REJECTED VALUE "R".

        PROCEDURE DIVISION.
        MAIN.
            PERFORM GET-CUSTOMER-INFO.
            PERFORM PROCESS-LOAN-APPLICATION.
            PERFORM DISPLAY-LOAN-RESULT.
            STOP RUN.

        GET-CUSTOMER-INFO.
            DISPLAY "Enter Customer Name: "
            ACCEPT CUSTOMER-NAME
            DISPLAY "Enter Age: "
            ACCEPT AGE
            DISPLAY "Enter Annual Income: "
            ACCEPT ANNUAL-INCOME
            DISPLAY "Enter Credit Score: "
            ACCEPT CREDIT-SCORE
            DISPLAY "Enter Employment Status (E for Employed, U for Unemployed): "
            ACCEPT EMPLOYMENT-STATUS.
        
        PROCESS-LOAN-APPLICATION.
            IF AGE >= 18 AND ANNUAL-INCOME >= 30000 AND CREDIT-SCORE >= 650 AND EMPLOYED
                SET APPROVED TO TRUE
            ELSE
                SET REJECTED TO TRUE.
            
        DISPLAY-LOAN-RESULT.
            IF APPROVED
                DISPLAY "Loan Application Approved for " CUSTOMER-NAME
            ELSE
                DISPLAY "Loan Application Rejected for " CUSTOMER-NAME.