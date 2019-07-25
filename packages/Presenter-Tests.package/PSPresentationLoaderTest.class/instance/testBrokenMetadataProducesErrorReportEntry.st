as yet unclassified
testBrokenMetadataProducesErrorReportEntry

	| directory errorReport |
	directory := self mockBrokenMetadataPresentationDirectory.
	[self loader loadPresentationFromDirectory: directory] valueSupplyingAnswer: true.
	errorReport := self loader fileErrors.
	self assert: (errorReport at: 'slide1') equals: 1.