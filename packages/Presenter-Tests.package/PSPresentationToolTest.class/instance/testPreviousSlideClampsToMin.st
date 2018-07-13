slide navigation tests
testPreviousSlideClampsToMin

	self assert: self tool currentSlide = self slides first.
	self tool previousSlide.
	self assert: self tool currentSlide = self slides first.