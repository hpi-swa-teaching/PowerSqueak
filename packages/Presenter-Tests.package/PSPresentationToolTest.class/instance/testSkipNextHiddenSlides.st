miniature view tests
testSkipNextHiddenSlides

	| miniature |
	3 timesRepeat: [self createSlide].
	miniature := self miniatureOf: (self slides at: 2).
	
	miniature hideSlide.
	self selectSlideNumber: 1.
	self tool enablePresentationMode.
	self tool nextSlide.
	self assert: self currentSlideNumber equals: 3
	