code morph tests
testExecuteCodeWithErrorDoesNotRaise

	self codeMorph textMorph contents: '1/0'.
	self shouldnt: [self codeMorph executeCode] raise: Error