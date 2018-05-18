slide resizing tests
testSlideRatioIsFixed

	| slide  |
	slide := self tool currentSlide.
	self assert: 
		(self is: [slide extent y / slide extent x = slide sideRatio] constantOnResizeOf: self window)