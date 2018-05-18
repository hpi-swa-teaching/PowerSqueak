slide creation tests
testSlideCreationSelectsNewSlide

	self assert: self tool currentSlide = self tool slides first.
	self tool createSlide.
	self assert: self tool currentSlide = self tool slides second.