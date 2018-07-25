slide navigation tests
testSelectSlideClamps

	self createSlide.
	self selectSlideNumber: 3.
	self assert: self currentSlide = self slides last.
	
	self selectSlideNumber: 0.
	self assert: self currentSlide = self slides first.
	
	self selectSlideNumber: -1.
	self assert: self currentSlide = self slides first.