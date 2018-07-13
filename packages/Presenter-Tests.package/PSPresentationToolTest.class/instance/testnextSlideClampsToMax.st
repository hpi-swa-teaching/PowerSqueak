slide navigation tests
testnextSlideClampsToMax

	self assert: self tool currentSlide = self slides last.
	self tool nextSlide.
	self assert: self tool currentSlide = self slides last.