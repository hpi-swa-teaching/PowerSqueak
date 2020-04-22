slide navigation tests
testSelectSlide

	self 
		createSlide;
		selectSlideAt: 1;
		assert: self currentSlide = self slides first.
	
	self 
		selectSlideAt: 2;
		assert: self currentSlide = self slides second