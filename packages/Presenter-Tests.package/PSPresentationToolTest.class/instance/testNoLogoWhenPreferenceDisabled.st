logo tests
testNoLogoWhenPreferenceDisabled

	PSPresentationTool showLogoInPresentationMode: false.
	self enablePresentationMode.
	self assert: self slideContainer logo isNil
