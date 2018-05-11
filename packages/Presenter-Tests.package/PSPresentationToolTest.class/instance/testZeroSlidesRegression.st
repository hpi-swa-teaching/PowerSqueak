slide tests
testZeroSlidesRegression

	| deletedSlide |
	self assert: self tool slideCount = 1.
	deletedSlide := self tool currentSlide.
	self tool deleteSlide: 1.
	self 
		assert: self tool slideCount = 1 
		description: 'There should never be 0 slides'.
	
	self 
		assert: self tool currentSlide ~= deletedSlide 
		description: 'The slide should actually be deleted'