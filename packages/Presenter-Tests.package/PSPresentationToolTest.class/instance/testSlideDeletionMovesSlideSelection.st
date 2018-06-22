slide deletion tests
testSlideDeletionMovesSlideSelection

	| slide |
	self setUpSlideDeletion.
	
	slide := self tool slides first.
	
	self tool deleteSlide: 2.
	self assert: self tool slides first = slide.
	self assert: self tool currentSlide = slide.