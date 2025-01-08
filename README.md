# COBOL Date/Time Input Validation Bug

This repository demonstrates a common error in COBOL programs: insufficient validation of date and time inputs. The provided COBOL code accepts date and time inputs from the user but lacks robust validation to prevent invalid data from causing program failures. 

The `bug.cob` file contains the faulty code.  The `bugSolution.cob` file offers a corrected version with improved validation.

## Bug Description

The original code only checks if the date is greater than 20240101. It doesn't check for invalid date formats (e.g., non-numeric values or dates with invalid day/month combinations).  Similarly, it lacks time validation.

## Solution

The solution introduces comprehensive checks for valid date and time formats and ranges, improving the program's reliability.
