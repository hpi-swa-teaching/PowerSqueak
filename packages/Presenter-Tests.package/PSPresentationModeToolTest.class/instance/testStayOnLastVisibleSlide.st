hidden slide presentation tests
testStayOnLastVisibleSlide

	| miniature |
	self createSlide.
	miniature := self tool miniatureController miniatureOf: (self slides at: 2).
	
	miniature hideSlide.
	self selectSlideAt: 1.
	self tool enablePresentationMode.
	self tool nextSlide.
	self assert: self currentSlideNumber equals: 1