logo tests
testLogoShownInPresentationModeWhenEnabled

	PSPresentationTool showLogoInPresentationMode: true.
	self enablePresentationMode.
	self
		deny: self slideContainer logo isNil;
		assert: (self slideContainer logo isKindOf: PSLogoMorph)
