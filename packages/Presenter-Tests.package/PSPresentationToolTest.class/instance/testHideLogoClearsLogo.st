logo tests
testHideLogoClearsLogo

	PSPresentationTool showLogoInPresentationMode: true.
	self enablePresentationMode.
	self slideContainer hideLogo.
	self assert: self slideContainer logo isNil
