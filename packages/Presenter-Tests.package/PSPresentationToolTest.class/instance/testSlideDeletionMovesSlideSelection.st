slide deletion tests
testSlideDeletionMovesSlideSelection

	| slide |
	self setUpSlideDeletion.
	
	slide := self slides first.
	
	self deleteSlideAt: 2.
	self 
		assert: self slides first equals: slide;
		assert: self currentSlide equals: slide