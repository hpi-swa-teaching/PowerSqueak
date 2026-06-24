logo tests
testLogoIsAddedToWorld

	PSPresentationTool showLogoInPresentationMode: true.
	self enablePresentationMode.
	self assert: self slideContainer logo world equals: self world
