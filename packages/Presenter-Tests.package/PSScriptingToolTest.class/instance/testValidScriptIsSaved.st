script saving tests
testValidScriptIsSaved

	self scriptingTool accept: self validScript.
	self assert:  (self scriptingTool codeSoFar) equals: self validScript