presentation loading tests
testCorruptedMorphProducesPreciseWarning

	| directory report |
	directory := self mockCorruptedMorphPresentationDirectory.
	[self loader loadPresentationFromDirectory: directory]
		valueSupplyingAnswer: true.
	report := self loader completeErrorReport.
	self
		assert: (report includesSubstring:
			'slide1: 1 morph file could not be loaded.')
		description: 'A corrupted morph file should be reported precisely.'