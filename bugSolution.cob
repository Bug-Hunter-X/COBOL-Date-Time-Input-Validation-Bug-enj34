```cobol
01  WS-DATA-AREA.
    05  WS-DATE          PIC 9(8).
    05  WS-TIME          PIC 9(6).
    05  WS-YEAR          PIC 9(4).
    05  WS-MONTH         PIC 9(2).
    05  WS-DAY           PIC 9(2).
    05  WS-HOUR          PIC 9(2).
    05  WS-MINUTE        PIC 9(2).
    05  WS-SECOND        PIC 9(2).

PROCEDURE DIVISION.
    DISPLAY "Enter a date (YYYYMMDD): ".
    ACCEPT WS-DATE.

    MOVE WS-DATE(1:4) TO WS-YEAR
    MOVE WS-DATE(5:2) TO WS-MONTH
    MOVE WS-DATE(7:2) TO WS-DAY

    IF WS-YEAR < 1900 OR WS-YEAR > 2100 THEN
       DISPLAY "Invalid Year" 
       STOP RUN.
    END-IF.

    IF WS-MONTH < 1 OR WS-MONTH > 12 THEN
       DISPLAY "Invalid Month" 
       STOP RUN.
    END-IF.

    IF WS-DAY < 1 OR WS-DAY > 31 THEN
       DISPLAY "Invalid Day" 
       STOP RUN.
    END-IF. 

    DISPLAY "Enter a time (HHMMSS): ".
    ACCEPT WS-TIME.
    
    MOVE WS-TIME(1:2) TO WS-HOUR
    MOVE WS-TIME(3:2) TO WS-MINUTE
    MOVE WS-TIME(5:2) TO WS-SECOND
    
    IF WS-HOUR < 0 OR WS-HOUR > 23 THEN
       DISPLAY "Invalid Hour" 
       STOP RUN.
    END-IF.

    IF WS-MINUTE < 0 OR WS-MINUTE > 59 THEN
       DISPLAY "Invalid Minute" 
       STOP RUN.
    END-IF.

    IF WS-SECOND < 0 OR WS-SECOND > 59 THEN
       DISPLAY "Invalid Second" 
       STOP RUN.
    END-IF.

    DISPLAY "Date: " WS-DATE
    DISPLAY "Time: " WS-TIME.
    STOP RUN.
```