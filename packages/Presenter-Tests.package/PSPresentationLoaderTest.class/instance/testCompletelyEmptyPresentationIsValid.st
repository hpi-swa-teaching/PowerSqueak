presentation loading tests
testCompletelyEmptyPresentationIsValid

	| directory |
	directory := self mockCompletelyEmptyPresentationDirectory.
	self assert: (self loader isValidPresentationDirectory: directory)