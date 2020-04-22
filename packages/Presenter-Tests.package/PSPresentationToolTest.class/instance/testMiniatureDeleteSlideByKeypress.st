miniature view tests
testMiniatureDeleteSlideByKeypress

	| slide miniature |
	slide := self createSlide.
	miniature := self miniatureOf: slide.
	self click: MouseEvent redButton at: miniature boundsInWorld center.
	self pressKey: Character delete at: miniature boundsInWorld center.
	self deny: (self slides includes: slide)