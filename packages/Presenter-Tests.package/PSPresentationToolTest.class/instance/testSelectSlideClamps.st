slide navigation tests
testSelectSlideClamps

	self tool createSlide.
	self tool selectSlideNumber: 3.
	self assert: self tool currentSlide = self slides last.
	
	self tool selectSlideNumber: 0.
	self assert: self currentSlide = self slides first.
	
	self tool selectSlideNumber: -1.
	self assert: self currentSlide = self slides first.