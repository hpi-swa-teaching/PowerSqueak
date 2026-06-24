logo tests
testLogoRendersInFrontOfSlideContainer

	PSPresentationTool showLogoInPresentationMode: true.
	self enablePresentationMode.
	self
		assert: self slideContainer logo morphicLayerNumber
		< self slideContainer morphicLayerNumber
