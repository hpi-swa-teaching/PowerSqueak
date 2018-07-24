slide navigation tests
testnextSlideClampsToMax

	self assert: self currentSlide = self slides last.
	self tool nextSlide.
	self assert: self currentSlide = self slides last.