logo tests
testLogoIsScaledToConfiguredHeight

	PSPresentationTool showLogoInPresentationMode: true.
	self enablePresentationMode.
	self assert:
		(self slideContainer logo image height - self slideContainer logoHeight) abs <= 1

