loading tests
testMissingSlidesDirectory

	| directory |
	directory := PSMockFileDirectory named: 'myPresentation'.
	self assert: (self tool isValidPresentationDirectory: directory) equals: false.