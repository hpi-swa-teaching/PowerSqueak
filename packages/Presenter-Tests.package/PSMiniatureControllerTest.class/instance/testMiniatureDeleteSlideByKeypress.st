miniature view tests
testMiniatureDeleteSlideByKeypress

	| slide miniature |
	slide := self createSlide.
	miniature := self tool miniatureController miniatureOf: slide.
	miniature keyStroke: (self keystroke: Character delete at: miniature boundsInWorld center).
	self deny: (self slides includes: slide)