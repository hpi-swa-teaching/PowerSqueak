miniature view tests
testMiniatureDeletesSlide

	| slide miniature |
	slide := self createSlide.
	miniature := self miniatureOf: slide.
	
	miniature deleteSlide.
	self deny:((self slides) includes: slide)