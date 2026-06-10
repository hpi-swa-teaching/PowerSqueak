as yet unclassified
testExecuteCodeEvaluatesExpression

	self codeMorph textMorph contents: '6 + 7'.
	self codeMorph executeCode.
	self assert: self codeMorph resultText equals: '13'