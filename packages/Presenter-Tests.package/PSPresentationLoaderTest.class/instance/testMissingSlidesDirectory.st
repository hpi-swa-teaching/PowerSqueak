directory checking
testMissingSlidesDirectory

	| directory |
	directory := PSMockFileDirectory named: 'myPresentation'.
	self deny: (self loader isValidPresentationDirectory: directory)