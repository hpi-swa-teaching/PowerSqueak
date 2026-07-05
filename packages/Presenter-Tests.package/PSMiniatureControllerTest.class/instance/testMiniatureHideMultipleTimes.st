miniature view tests
testMiniatureHideMultipleTimes

	| slide miniature |
	slide := self createSlide.
	miniature := self tool miniatureController miniatureOf: slide.
	miniature hideSlide. 
	miniature unhideSlide.
	miniature hideSlide.
	self deny: miniature submorphs size equals: 0