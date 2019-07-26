script execution tests
testScriptIsNotExecutedOnSave

	self setInteractScript.
	self deny: (self interacted).