slide creation tests
testDuplicateSlide

	| slideCount |
	slideCount := self tool slideCount.
	self tool duplicateCurrentSlide.
	self assert: self tool slideCount = (slideCount + 1)
	