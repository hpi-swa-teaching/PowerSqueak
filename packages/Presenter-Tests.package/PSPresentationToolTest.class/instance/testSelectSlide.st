slide navigation tests
testSelectSlide

	self tool createSlide.
	self tool selectSlideNumber: 1.
	self assert: self tool currentSlide = self tool slides first.
	
	self tool selectSlideNumber: 2.
	self assert: self tool currentSlide = self tool slides second