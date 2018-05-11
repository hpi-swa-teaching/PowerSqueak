slides test
testSlideCreation

	| slideCount |
	self assert: self tool currentSlideNumber = 1.
	
	self assert: self tool slideCount = 1.
	
	slideCount := self tool slideCount.
	self tool createSlide.
	self assert: self tool slideCount = (slideCount + 1).
	self assert: self tool currentSlideNumber = 2