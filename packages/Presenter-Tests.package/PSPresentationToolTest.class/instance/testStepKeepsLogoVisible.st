logo tests
testStepKeepsLogoVisible

	PSPresentationTool showLogoInPresentationMode: true.
	self enablePresentationMode.
	self slideContainer logo delete.
	self slideContainer step.
	self assert: self slideContainer logo world equals: self world
