        IDENTIFICATION DIVISION.
        PROGRAM-ID. VARIABLES.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 DEPOSIT-AMOUNT  PIC 9(5) VALUE 0.
        01 WITHDRAW-AMOUNT PIC 9(5) VALUE 0.
        01 BALANCE      PIC 9(5) VALUE 1000.
        01 CHOICE      PIC 9 VALUE 0.
    *>    01 RESULT      PIC 9(3) VALUE 000.

        PROCEDURE DIVISION.
        MAIN.
            PERFORM DISPLAY-MENU.
            PERFORM PROCESS-CHOICE.
            STOP RUN.

        DISPLAY-MENU.
            DISPLAY "SELECT AN OPTION:".
            DISPLAY "1. CHECK BALANCE".
            DISPLAY "2. DEPOSIT".
            DISPLAY "3. WITHDRAW".
            DISPLAY "4. EXIT".
            DISPLAY "".
            DISPLAY "Enter your choice (number): ".
            ACCEPT CHOICE.

        PROCESS-CHOICE.
            EVALUATE CHOICE
            WHEN 1
                DISPLAY X"0A" "Balance: " BALANCE
            WHEN 2
                DISPLAY X"0A" "HOW MUCH WOULD YOU LIKE TO DEPOSIT?"
                ACCEPT DEPOSIT-AMOUNT
                ADD DEPOSIT-AMOUNT TO BALANCE
                DISPLAY "NEW BALANCE: " BALANCE
            WHEN 3
                DISPLAY X"0A" "HOW MUCH WOULD YOU LIKE TO WITHDRAW?"
                ACCEPT WITHDRAW-AMOUNT
                IF WITHDRAW-AMOUNT > BALANCE
                    DISPLAY X"0A" "INSUFFICIENT FUNDS"
                ELSE
                    SUBTRACT WITHDRAW-AMOUNT FROM BALANCE
                    DISPLAY X"0A" "NEW BALANCE: " BALANCE
                END-IF
            WHEN 4
                DISPLAY X"0A" "GOODBYE"
                STOP RUN
            WHEN OTHER
                DISPLAY X"0A" "INVALID OPTION. PLEASE TRY AGAIN."
            END-EVALUATE.
        STOP RUN.