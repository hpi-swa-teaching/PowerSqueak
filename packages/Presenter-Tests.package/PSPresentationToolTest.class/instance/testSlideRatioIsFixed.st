slide resizing tests
testSlideRatioIsFixed

	| slide  |
	self assert: (self tool slideCount = 1).
	slide := self tool slides at: 1.
	self assert: 
		(self is: [slide extent y / slide extent x = slide sideRatio] constantOnResizeOf: slide)