slide resizing tests
testSlideRatioIsFixed

	| slide  |
	slide := self tool currentSlide.
	self assert: slide extent y / slide extent x = slide sideRatio.
	self assert: 
		(self is: [slide extent y / slide extent x] constantOnResizeOf: self window)