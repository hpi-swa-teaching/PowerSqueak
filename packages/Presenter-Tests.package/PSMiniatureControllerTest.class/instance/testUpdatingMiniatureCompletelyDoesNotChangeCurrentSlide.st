miniature view tests
testUpdatingMiniatureCompletelyDoesNotChangeCurrentSlide

	self tool createSlide.
	self tool createSlide.
	self tool selectSlideAt: 1.
	self tool miniatureController updateSlideMiniatureCompletelyAt: 3.
	self assert: self tool currentSlideNumber equals: 1