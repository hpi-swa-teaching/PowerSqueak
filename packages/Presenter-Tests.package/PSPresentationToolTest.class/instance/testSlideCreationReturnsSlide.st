slide creation tests
testSlideCreationReturnsSlide

	| slide |
	slide := self createSlide.
	self assert: slide equals: self currentSlide