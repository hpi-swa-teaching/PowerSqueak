slide creation tests
testSlideCreation

	| slideCount newSlide |
	slideCount := self slideCount.
	newSlide := self createSlide.
	self assert: self slideCount equals: (slideCount + 1).
	self assert: (self slides includes: newSlide)
	