slide deletion tests
testDeletionRemovesSlide

	| deletedSlide |
	self setUpSlideDeletion.
	
	deletedSlide := self tool slides first.
	self tool deleteSlide: 1.
	self assert: (self tool slides includes: deletedSlide) not