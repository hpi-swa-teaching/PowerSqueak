code morph tests
testExecuteCodeWithZeroDivideShowsZeroDivide
    
	self codeMorph textMorph contents: '(6+7) / 0'.
	self codeMorph executeCode.
	self assert: ((self codeMorph resultText beginsWith: 'ZeroDivide') and:[ self codeMorph resultText size = 10])