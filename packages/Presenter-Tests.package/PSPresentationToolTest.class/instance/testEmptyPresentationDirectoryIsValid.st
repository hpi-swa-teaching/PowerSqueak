loading tests
testEmptyPresentationDirectoryIsValid

	| directory |
	directory := self mockEmptyPresentationDirectory.
	self assert: (self tool isValidPresentationDirectory: directory)