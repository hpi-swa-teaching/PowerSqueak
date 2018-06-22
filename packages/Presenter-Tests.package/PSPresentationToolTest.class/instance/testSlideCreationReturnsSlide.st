slide creation tests
testSlideCreationReturnsSlide

	| slide |
	slide := self tool createSlide.
	self assert: slide = self tool currentSlide.