slide navigation tests
testSelectSlideClamps

	self tool createSlide.
	self tool selectSlide: 3.
	self assert: self tool currentSlide = self tool slides last.
	
	self tool selectSlide: 0.
	self assert: self tool currentSlide = self tool slides first.
	
	self tool selectSlide: -1.
	self assert: self tool currentSlide = self tool slides first.