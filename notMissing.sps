* Encoding: UTF-8.
* notMissing function
* Removes cases missing values on the identified variable
* Works on both string and numeric variables
* by Jamie DeCoster

**** Usage: notMissing(variable)
**** "variable" is a string indicating the name of the variable the selection is to be
* based upon.

**** Example: notMissing("gender")
**** This would remove all cases in the data set that were missing a value on
* gender. This would work whether gender was coded 1, 2 or M, F

*****
* Version History
*****
* 2018-11-13 Created

begin program python.
import spss

def getVariableIndex(variable):
    for t in range(spss.GetVariableCount()):
        if (variable.upper() == spss.GetVariableName(t).upper()):
            return(t)

def notMissing(variable):
    varnum = getVariableIndex(variable)
    if (varnum==None):
        print ("Error: variable not in data set")
    else:
        if (spss.GetVariableType(varnum) == 0):
            submitstring = """FILTER OFF.
USE ALL.
SELECT IF (not missing ({0})).
EXECUTE.""".format(variable)
        else:
            submitstring = """FILTER OFF.
USE ALL.
SELECT IF ({0} ~= "").
EXECUTE.""".format(variable)
        spss.Submit(submitstring)
end program python.
