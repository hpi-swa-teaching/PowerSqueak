slide deletion tests
testDeletionDecreasesSlideCount

	| slideCount |
	self setUpSlideDeletion.
	
	slideCount := self tool slideCount.
	self tool deleteSlide: 1.
	self assert: self tool slideCount = (slideCount - 1)