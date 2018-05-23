slide resizing tests
testSlideRatioIsFixed

	| slide  |
	slide := self tool currentSlide.
	self assert: slide extent y / slide extent x = slide sideRatio.
	self assertIsConstantOnWindowResize: [	
			(slide extent y - (slide extent x * slide sideRatio)) abs < 1]