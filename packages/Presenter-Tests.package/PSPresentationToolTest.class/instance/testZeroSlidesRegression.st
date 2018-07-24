slide deletion tests
testZeroSlidesRegression

	| deletedSlide |
	self assert: self slideCount = 1.
	deletedSlide := self currentSlide.
	self tool deleteSlideAt: 1.
	self 
		assert: self slideCount = 1 
		description: 'There should never be 0 slides'.
	
	self 
		assert: self currentSlide ~= deletedSlide 
		description: 'The slide should actually be deleted'