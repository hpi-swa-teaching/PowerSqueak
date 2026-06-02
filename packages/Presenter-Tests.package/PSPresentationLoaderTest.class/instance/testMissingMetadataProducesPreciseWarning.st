presentation loading tests
testMissingMetadataProducesPreciseWarning

	| directory report |
	directory := self mockMissingMetadataPresentationDirectory.
	[self loader loadPresentationFromDirectory: directory]
		valueSupplyingAnswer: true.
	report := self loader completeErrorReport.
	self
		assert: (report includesSubstring:
			'slide1: metadata.dict is missing or corrupted. Default values were used.')
		description: 'Missing metadata should be reported precisely.'