miniature view tests
testMiniatureHide

	| slide miniature |
	slide := self createSlide.
	miniature := self miniatureOf: slide.
	
	miniature hideSlide.
	self assert: slide isHidden equals: true