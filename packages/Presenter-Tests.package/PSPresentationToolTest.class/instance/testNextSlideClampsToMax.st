slide navigation tests
testNextSlideClampsToMax

	self assert: self currentSlide equals: self slides last.
	self tool nextSlide.
	self assert: self currentSlide equals: self slides last