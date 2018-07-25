slide navigation tests
testSelectSlideClamps

	self 
		createSlide;
		selectSlideNumber: 3;
		assert: self currentSlide = self slides last.
	
	self 
		selectSlideNumber: 0;
		assert: self currentSlide = self slides first.
	
	self 
		selectSlideNumber: -1;
		assert: self currentSlide = self slides first.