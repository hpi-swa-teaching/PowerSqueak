presentation loading tests
testMissingLayoutsDirectoryProducesWarning
 
	| directory report |
	directory := PSMockFileDirectory from: 'Presentation' -> {
		PSPresentationLoader slidesDirectoryName -> {}}.
	[self loader loadPresentationFromDirectory: directory]
		valueSupplyingAnswer: true.
	report := self loader completeErrorReport.
	self
		assert: (report includesSubstring:
			'The layouts directory is missing. Slides were loaded without layouts.')
		description: 'A missing layouts directory should be reported.'