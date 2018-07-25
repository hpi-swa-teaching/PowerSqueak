slide navigation tests
testSelectSlide

	self createSlide.
	self tool selectSlideNumber: 1.
	self assert: self currentSlide = self slides first.
	
	self tool selectSlideNumber: 2.
	self assert: self currentSlide = self slides second