slide creation tests
testSlideCreation

	| slideCount newSlide |
	slideCount := self tool slideCount.
	newSlide := self tool createSlide.
	self assert: self tool slideCount = (slideCount + 1).
	self assert: (self slides includes: newSlide)
	