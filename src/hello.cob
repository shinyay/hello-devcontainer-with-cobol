       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           CONSOLE IS DISPLAY-DEVICE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-CURRENT-DATE.
           05  WS-YEAR                PIC 9(4).
           05  WS-MONTH               PIC 9(2).
           05  WS-DAY                 PIC 9(2).
       01  WS-FORMATTED-DATE          PIC X(20).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM DISPLAY-WELCOME
           PERFORM GET-AND-DISPLAY-DATE
           PERFORM PROGRAM-DONE
           STOP RUN.
       DISPLAY-WELCOME.
           DISPLAY "********************************"
           DISPLAY "* COBOL Development Container! *"
           DISPLAY "********************************"
           DISPLAY SPACE.
       GET-AND-DISPLAY-DATE.
           MOVE FUNCTION CURRENT-DATE(1:8) TO WS-CURRENT-DATE
           STRING "Date: "
                  WS-YEAR DELIMITED BY SIZE
                  "-"
                  WS-MONTH DELIMITED BY SIZE
                  "-"
                  WS-DAY DELIMITED BY SIZE
                  INTO WS-FORMATTED-DATE
           DISPLAY WS-FORMATTED-DATE.
       PROGRAM-DONE.
           DISPLAY SPACE
           DISPLAY "Program execution completed.".
