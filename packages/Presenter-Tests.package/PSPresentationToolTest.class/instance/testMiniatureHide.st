miniature view tests
testMiniatureHide

	| slide miniature |
	slide := self createSlide.
	miniature := self tool miniatureController miniatureOf: slide.
	
	miniature hideSlide.
	self assert: slide isHidden equals: true