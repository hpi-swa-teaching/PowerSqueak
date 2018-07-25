miniature view tests
testSelectedMiniatureChanges

	| slide |
	5 timesRepeat: [self createSlide].
	slide := self slideAt: 2.
	self tool selectSlide: slide.
	self assert: (self miniatureOf: slide) equals: self tool currentMiniature