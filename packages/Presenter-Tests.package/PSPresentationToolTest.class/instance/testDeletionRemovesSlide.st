slide deletion tests
testDeletionRemovesSlide

	| deletedSlide |
	self setUpSlideDeletion.
	
	deletedSlide := self slides first.
	self tool deleteSlideAt: 1.
	self assert: (self slides includes: deletedSlide) not