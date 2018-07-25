slide navigation tests
testNextSlide

	self createSlide.
	self tool selectSlideNumber: 1.
	self assert: self currentSlide = self slides first.
	self tool nextSlide.
	self assert: self currentSlide = self slides second