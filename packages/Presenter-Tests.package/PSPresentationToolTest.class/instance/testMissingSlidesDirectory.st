loading tests
testMissingSlidesDirectory

	| directory |
	directory := MockFileDirectory named: 'myPresentation'.
	self assert: (self tool isValidPresentationDirectory: directory) equals: false.