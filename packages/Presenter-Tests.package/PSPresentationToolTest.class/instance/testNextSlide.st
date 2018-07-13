slide navigation tests
testNextSlide

	self tool createSlide.
	self tool selectSlideNumber: 1.
	self assert: self tool currentSlide = self slides first.
	self tool nextSlide.
	self assert: self tool currentSlide = self slides second.