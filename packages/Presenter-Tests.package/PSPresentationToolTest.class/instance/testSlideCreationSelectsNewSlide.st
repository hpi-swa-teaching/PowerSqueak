slide creation tests
testSlideCreationSelectsNewSlide

	self assert: self currentSlide = self slides first.
	self tool createSlide.
	self assert: self currentSlide = self slides second.