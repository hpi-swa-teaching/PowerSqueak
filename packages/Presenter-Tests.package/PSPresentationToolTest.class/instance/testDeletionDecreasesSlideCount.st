slide deletion tests
testDeletionDecreasesSlideCount

	| slideCount |
	self setUpSlideDeletion.
	
	slideCount := self slideCount.
	self 
		deleteSlideAt: 1;
		assert: self slideCount equals: (slideCount - 1)