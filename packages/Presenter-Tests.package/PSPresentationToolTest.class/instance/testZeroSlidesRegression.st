slide deletion tests
testZeroSlidesRegression

	| deletedSlide |
	self assert: self slideCount equals: self tool class minimumSlideCount.
	deletedSlide := self currentSlide.
	self deleteSlideAt: 1.
	self 
		assert: self slideCount equals: self tool class minimumSlideCount
		description: 'There should never be 0 slides'.
	
	self 
		deny: self currentSlide = deletedSlide
		description: 'The slide should actually be deleted'