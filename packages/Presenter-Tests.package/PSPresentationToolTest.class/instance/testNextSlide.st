slide navigation tests
testNextSlide

	self 
		createSlide;
		selectSlideNumber: 1;
		assert: self currentSlide = self slides first.
	self tool nextSlide.
	self assert: self currentSlide = self slides second