slide deletion tests
testDeletionDecreasesSlideCount

	| slideCount |
	self setUpSlideDeletion.
	
	slideCount := self tool slideCount.
	self tool deleteSlideAt: 1.
	self assert: self tool slideCount equals: (slideCount - 1)