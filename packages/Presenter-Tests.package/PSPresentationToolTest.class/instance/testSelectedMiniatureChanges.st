miniature view tests
testSelectedMiniatureChanges

	| slide |
	5 timesRepeat: [self tool createSlide].
	slide := self tool slideAt: 2.
	self tool selectSlide: slide.
	self assert: (self tool miniatureOf: slide) equals: self tool currentMiniature