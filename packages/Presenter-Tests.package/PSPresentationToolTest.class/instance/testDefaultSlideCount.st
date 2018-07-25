slide creation tests
testDefaultSlideCount

	self assert: self slideCount equals: 1.
	self assert: self currentSlide equals: (self tool slideAt: 1)