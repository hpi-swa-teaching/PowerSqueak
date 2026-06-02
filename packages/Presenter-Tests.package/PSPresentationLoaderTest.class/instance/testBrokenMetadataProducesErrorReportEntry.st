presentation loading tests
testBrokenMetadataProducesErrorReportEntry

	| directory errorReport |
	directory := self mockBrokenMetadataPresentationDirectory.
	[self loader loadPresentationFromDirectory: directory] valueSupplyingAnswer: true.
	errorReport := self loader fileErrors.
	self assert: (errorReport at: 'slide1') equals: 1.
	self
		assert: (self loader completeErrorReport includesSubstring:
			'slide1: metadata.dict is missing or corrupted. Default values were used.')
		description: 'Corrupted metadata should be reported precisely.'