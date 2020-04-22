slide moving tests
testMoveSlideFromMiniatureMethodMovesSlide
	
	| slide destination |
	slide := self createSlide.
	destination := 1.
	[(self miniatureOf: slide) moveSlide] valueSupplyingAnswer: destination asString.
	self assert: (self slides indexOf: slide startingAt: 0) equals: destination.