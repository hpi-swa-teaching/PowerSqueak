slide creation tests
testSlideCreationSelectsNewSlide

	self assert: self currentSlide equals: self slides first.
	self createSlide.
	self assert: self currentSlide equals: self slides second