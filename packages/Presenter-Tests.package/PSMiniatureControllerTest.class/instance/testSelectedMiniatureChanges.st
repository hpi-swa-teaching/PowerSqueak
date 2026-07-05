miniature view tests
testSelectedMiniatureChanges

	| slide |
	5 timesRepeat: [self createSlide].
	slide := self slideAt: 2.
	self tool selectSlide: slide.
	self
		assert: (self tool miniatureController miniatureOf: slide)
		equals: self tool miniatureController currentMiniature