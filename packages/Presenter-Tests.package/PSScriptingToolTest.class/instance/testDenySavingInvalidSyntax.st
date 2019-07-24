as yet unclassified
testDenySavingInvalidSyntax
	
	| codeBefore |
	codeBefore := self scriptingTool codeSoFar.
	self scriptingTool accept: self invalidSyntaxScript.
	self assert:  (self scriptingTool codeSoFar) equals: self scriptingTool codeSoFar.