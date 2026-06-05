presentation loading tests
testMissingLastMorphFileProducesWarning

	| directory report |
	directory := self mockPresentationWithMorphFiles: {'1.morph'}.
	[self loader loadPresentationFromDirectory: directory]
		valueSupplyingAnswer: true.
	report := self loader completeErrorReport.
	self
		assert: (report includesSubstring: 'slide1: 1 morph file is missing.')
		description: 'A deleted last morph file should be reported.'