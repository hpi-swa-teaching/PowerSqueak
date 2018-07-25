slide creation tests
testDuplicateSlide

	| slideCount |
	slideCount := self slideCount.
	self tool duplicateCurrentSlide.
	self assert: self slideCount equals: (slideCount + 1)
	