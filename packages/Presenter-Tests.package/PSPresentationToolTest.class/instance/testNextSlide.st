slide navigation tests
testNextSlide

	self createSlide.
	self tool selectSlideNumber: 1.
	
	self assert: self currentSlide equals: self slides first.
	self tool nextSlide.
	self assert: self currentSlide equals: self slides second