presentation loading tests
testMissingFirstMorphFileProducesWarning

	| directory report |
	directory := self mockPresentationWithMorphFiles: {'2.morph'}.
	[self loader loadPresentationFromDirectory: directory]
		valueSupplyingAnswer: true.
	report := self loader completeErrorReport.
	self
		assert: (report includesSubstring: 'slide1: 1 morph file is missing.')
		description: 'A deleted first morph file should be reported.'