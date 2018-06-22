slide navigation tests
testSelectSlide

	self tool createSlide.
	self tool selectSlide: 1.
	self assert: self tool currentSlide = self tool slides first.
	
	self tool selectSlide: 2.
	self assert: self tool currentSlide = self tool slides second