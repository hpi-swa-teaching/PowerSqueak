slide navigation tests
testSelectSlideClamps

	self 
		createSlide;
		selectSlideAt: 3;
		assert: self currentSlide = self slides last.
	
	self 
		selectSlideAt: 0;
		assert: self currentSlide = self slides first.
	
	self 
		selectSlideAt: -1;
		assert: self currentSlide = self slides first.