slide deletion tests
testDeleteFirstSlide

	| deletedSlide slide |
	self setUpSlideDeletion.
	
	deletedSlide := self slideAt: 1.
	slide := self slideAt: 2.
	
	self deleteSlideAt: 1.
	self assert: (self slideAt: 1) equals: slide