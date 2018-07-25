slide creation tests
testDefaultSlideCount

	self 
		assert: self slideCount equals: 1;
		assert: self currentSlide equals: (self slideAt: 1)