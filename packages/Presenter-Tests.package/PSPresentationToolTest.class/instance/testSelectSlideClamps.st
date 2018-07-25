slide navigation tests
testSelectSlideClamps

	self createSlide.
	self tool selectSlideNumber: 3.
	self assert: self tool currentSlide equals: self slides last.
	
	self tool selectSlideNumber: 0.
	self assert: self currentSlide equals: self slides first.
	
	self tool selectSlideNumber: -1.
	self assert: self currentSlide equals: self slides first