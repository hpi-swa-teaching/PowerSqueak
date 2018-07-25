slide deletion tests
testSlideDeletionMovesSlideSelection

	| slide |
	self setUpSlideDeletion.
	
	slide := self slides first.
	
	self tool deleteSlideAt: 2.
	self assert: self slides first equals: slide.
	self assert: self currentSlide equals: slide