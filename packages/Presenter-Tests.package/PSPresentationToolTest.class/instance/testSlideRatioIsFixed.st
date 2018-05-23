slide resizing tests
testSlideRatioIsFixed

	| slide  |
	slide := self tool currentSlide.
	self assert: slide extent y / slide extent x = slide sideRatio.
	self assertIsNearlyConstantOnWindowResize: [slide extent y / slide extent x]