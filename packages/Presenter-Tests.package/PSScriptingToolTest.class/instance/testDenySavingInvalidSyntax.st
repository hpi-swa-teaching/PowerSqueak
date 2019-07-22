as yet unclassified
testDenySavingInvalidSyntax
	
	self scriptingTool accept: self invalidSyntaxScript.
	self deny:  (self scriptingTool receiver valueOfProperty: (self scriptingTool currentMorphProperty)) equals: self invalidSyntaxScript.