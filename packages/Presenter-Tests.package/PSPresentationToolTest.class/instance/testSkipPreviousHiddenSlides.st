miniature view tests
testSkipPreviousHiddenSlides

	| miniature |
	3 timesRepeat: [self createSlide].
	miniature := self miniatureOf: (self slides at: 2).
	
	miniature hideSlide.
	self selectSlideNumber: 3.
	self tool enablePresentationMode.
	self tool previousSlide.
	self assert: self currentSlideNumber equals: 1
	