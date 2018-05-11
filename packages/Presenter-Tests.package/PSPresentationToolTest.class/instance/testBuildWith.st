ui creation tests
testBuildWith

	| presentationTool |
	[presentationTool := PSPresentationTool open.
	
	self assert: presentationTool model class = PSPresentationTool]
		ensure: [presentationTool abandon]