logo tests
testLogoSitsInBottomRightCorner

	PSPresentationTool showLogoInPresentationMode: true.
	self enablePresentationMode.
	self
		assert: self slideContainer logo bottomRight
		equals: self world bottomRight - self slideContainer logoMargin
