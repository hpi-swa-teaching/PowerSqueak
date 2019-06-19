miniature view tests
testMiniatureDeleteSlide

	| slide miniature |
	slide := self createSlide.
	miniature := self miniatureOf: slide.
	
	miniature deleteSlide.
	self assert:((self window model presentation slides) includes: slide) equals: false