slide resizing tests
testSlideRatioIsFixed

	| slide  |
	slide := self tool currentSlide.
	self assert: slide extent y / slide extent x = slide sideRatio.
	self assertIsConstantOnWindowResize: [	true "slide extent y / slide extent x"]