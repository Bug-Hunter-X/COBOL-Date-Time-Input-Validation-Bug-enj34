```cobol
01  WS-DATA-AREA.
    05  WS-DATE          PIC 9(8).
    05  WS-TIME          PIC 9(6).

PROCEDURE DIVISION.
    DISPLAY "Enter a date (YYYYMMDD): ".
    ACCEPT WS-DATE.

    DISPLAY "Enter a time (HHMMSS): ".
    ACCEPT WS-TIME.

    IF WS-DATE > 20240101 THEN
       DISPLAY "Invalid Date" 
       STOP RUN.
    END-IF.

    DISPLAY "Date: " WS-DATE
    DISPLAY "Time: " WS-TIME.
    STOP RUN.
```