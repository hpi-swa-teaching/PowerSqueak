presentation tests
testSlidesCollectReturnsOneResultPerSlide

	self createSlide.
	self
		assert: (self presentation slidesCollect: [:slide | slide]) size
		equals: self presentation slideCount
