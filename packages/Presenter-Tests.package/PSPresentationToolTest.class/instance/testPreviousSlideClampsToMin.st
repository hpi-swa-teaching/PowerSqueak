slide navigation tests
testPreviousSlideClampsToMin

	self assert: self tool currentSlide = self tool slides first.
	self tool previousSlide.
	self assert: self tool currentSlide = self tool slides first.