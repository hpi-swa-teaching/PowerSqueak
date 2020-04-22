slide navigation tests
testNextSlide

	self 
		createSlide;
		selectSlideAt: 1;
		assert: self currentSlide = self slides first.
	self tool nextSlide.
	self assert: self currentSlide = self slides second