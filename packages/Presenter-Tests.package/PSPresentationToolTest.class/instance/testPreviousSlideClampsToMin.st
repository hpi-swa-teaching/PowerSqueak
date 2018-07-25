slide navigation tests
testPreviousSlideClampsToMin

	self assert: self currentSlide = self slides first.
	self tool previousSlide.
	self assert: self currentSlide = self slides first