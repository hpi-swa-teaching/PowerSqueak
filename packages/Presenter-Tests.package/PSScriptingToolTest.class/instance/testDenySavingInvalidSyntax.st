as yet unclassified
testDenySavingInvalidSyntax
	
	| codeBefore |
	codeBefore := self scriptingTool codeSoFar.
	self scriptingTool accept: self invalidSyntaxScript.
	self assert: codeBefore equals: self scriptingTool codeSoFar.