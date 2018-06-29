slide navigation tests
testSelectSlideClamps

	self tool createSlide.
	self tool selectSlideNumber: 3.
	self assert: self tool currentSlide = self tool slides last.
	
	self tool selectSlideNumber: 0.
	self assert: self tool currentSlide = self tool slides first.
	
	self tool selectSlideNumber: -1.
	self assert: self tool currentSlide = self tool slides first.