hidden slide presentation tests
testSkipPreviousHiddenSlides

	| miniature |
	3 timesRepeat: [self createSlide].
	miniature := self tool miniatureController miniatureOf: (self slides at: 2).
	
	miniature hideSlide.
	self selectSlideAt: 3.
	self tool enablePresentationMode.
	self tool previousSlide.
	self assert: self currentSlideNumber equals: 1
	