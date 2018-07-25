slide navigation tests
testSelectSlide

	self createSlide.
	self selectSlideNumber: 1.
	self assert: self currentSlide = self slides first.
	
	self selectSlideNumber: 2.
	self assert: self currentSlide = self slides second