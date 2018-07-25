slide creation tests
testSlideCreationSelectsNewSlide

	self 
		assert: self currentSlide equals: self slides first;
		createSlide;
		assert: self currentSlide equals: self slides second