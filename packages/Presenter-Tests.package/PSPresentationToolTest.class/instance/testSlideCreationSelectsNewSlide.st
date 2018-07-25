slide creation tests
testSlideCreationSelectsNewSlide

	self assert: self currentSlide equals: self slides first.
	self tool createSlide.
	self assert: self currentSlide equals: self slides second.