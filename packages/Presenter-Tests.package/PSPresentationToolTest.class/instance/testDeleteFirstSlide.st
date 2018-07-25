slide deletion tests
testDeleteFirstSlide

	| deletedSlide slide |
	self setUpSlideDeletion.
	
	deletedSlide := self tool slideAt: 1.
	slide := self tool slideAt: 2.
	
	self tool deleteSlideAt: 1.
	self assert: (self tool slideAt: 1) equals: slide