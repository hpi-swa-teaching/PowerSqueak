slide deletion tests
testDeletionRemovesSlide

	| deletedSlide |
	self setUpSlideDeletion.
	
	deletedSlide := self slides first.
	self 
		deleteSlideAt: 1;
		deny: (self slides includes: deletedSlide)