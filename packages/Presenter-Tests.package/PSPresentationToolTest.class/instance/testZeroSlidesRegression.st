slide deletion tests
testZeroSlidesRegression

	| deletedSlide |
	self assert: self slideCount equals: 1.
	deletedSlide := self currentSlide.
	self deleteSlideAt: 1.
	self 
		assert: self slideCount equals: 1 
		description: 'There should never be 0 slides'.
	
	self 
		deny: self currentSlide = deletedSlide 
		description: 'The slide should actually be deleted'