slide tests
testSlideDeletion

	| slideCount slide deletedSlide |
	
	self tool createSlide.
	slideCount := self tool slideCount.
	self assert: slideCount = 2.
	
	slide := self tool slides first.
	deletedSlide := self tool slides second.
	
	self tool deleteSlide: 2.
	self assert: self tool slideCount = (slideCount - 1).
	self assert: self tool slides first = slide.
	self assert: (self tool slides includes: deletedSlide) not.
	self assert: self tool currentSlideNumber ~= 2.
	self assert: self tool currentSlide class = PSSlide.
	
	self tool createSlide.
	deletedSlide := self tool slides first.
	slide := self tool slides second.
	self tool deleteSlide: 1.
	self assert: self tool slides first = slide.
	self assert: self tool currentSlide class = PSSlide