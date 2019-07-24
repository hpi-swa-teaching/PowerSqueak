as yet unclassified
testValidScriptIsSaved

	self scriptingTool accept: self validScript.
	self assert:  (self scriptingTool codeSoFar) equals: self validScript