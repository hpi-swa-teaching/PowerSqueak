slide creation tests
testDefaultSlideCount

	self assert: self tool slideCount = 1.
	self assert: self tool currentSlide = (self tool slideAt: 1).