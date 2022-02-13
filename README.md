# notMissing
This is an SPSS Python macro that removes cases missing values on the identified variable. Works on both string and numeric variables.

## Usage
**notMissing(variable)**
* "variable" is a string indicating the name of the variable the selection is to be based upon.

## Example
**notMissing("gender")**
* This would remove all cases in the data set that were missing a value on gender. 
* This would work whether gender was coded (1, 2) or (M, F).

This and other SPSS Python Extension functions can be found at http://www.stat-help.com/python.html
