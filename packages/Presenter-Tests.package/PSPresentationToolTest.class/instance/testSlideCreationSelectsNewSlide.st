slide creation tests
testSlideCreationSelectsNewSlide

	self assert: self tool currentSlide = self slides first.
	self tool createSlide.
	self assert: self tool currentSlide = self slides second.