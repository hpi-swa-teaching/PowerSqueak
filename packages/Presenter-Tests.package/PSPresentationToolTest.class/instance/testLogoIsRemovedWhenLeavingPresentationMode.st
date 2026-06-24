logo tests
testLogoIsRemovedWhenLeavingPresentationMode

	PSPresentationTool showLogoInPresentationMode: true.
	self enablePresentationMode.
	self deny: self slideContainer logo isNil.
	self tool disablePresentationMode.
	self assert: self slideContainer logo isNil
