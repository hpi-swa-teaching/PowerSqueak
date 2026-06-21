as yet unclassified
testExecuteCodeErrorWithMessageShowsMessageText

	self codeMorph textMorph contents: 'Error signal: ''Fuck'''.
	self codeMorph executeCode.
	self assert: self codeMorph resultText equals: 'Fuck'