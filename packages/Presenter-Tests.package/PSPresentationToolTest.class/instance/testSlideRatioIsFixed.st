slide resizing tests
testSlideRatioIsFixed

	| slide  |
	slide := self tool currentSlide.
	self assert: slide extent y / slide extent x = slide sideRatio.
	self assertIsConstantOnWindowResize: [	0"slide extent y / slide extent x"]