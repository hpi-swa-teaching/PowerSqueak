presentation model tests
testPrintStringIncludesPresentationName

	| presentation |
	presentation := PSPresentation new.
	presentation name: 'Demo'.
	self assert: (presentation printString includesSubstring: 'Demo')
