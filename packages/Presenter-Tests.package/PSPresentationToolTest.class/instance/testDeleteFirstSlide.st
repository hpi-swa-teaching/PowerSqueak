slide deletion tests
testDeleteFirstSlide

	| slide |
	self setUpSlideDeletion.
	
	slide := self slideAt: 2.
	
	self 
		deleteSlideAt: 1;
		assert: (self slideAt: 1) equals: slide