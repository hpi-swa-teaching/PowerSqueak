slide navigation tests
testSelectSlide

	self 
		createSlide;
		selectSlideNumber: 1;
		assert: self currentSlide = self slides first.
	
	self 
		selectSlideNumber: 2;
		assert: self currentSlide = self slides second