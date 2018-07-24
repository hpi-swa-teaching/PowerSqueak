slide creation tests
testDefaultSlideCount

	self assert: self slideCount = 1.
	self assert: self currentSlide = (self tool slideAt: 1).