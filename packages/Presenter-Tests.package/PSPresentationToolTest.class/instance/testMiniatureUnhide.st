miniature view tests
testMiniatureUnhide

	| slide miniature |
	slide := self createSlide.
	miniature := self miniatureOf: slide.
	
	miniature unhideSlide.
	self assert: slide isHidden equals: false