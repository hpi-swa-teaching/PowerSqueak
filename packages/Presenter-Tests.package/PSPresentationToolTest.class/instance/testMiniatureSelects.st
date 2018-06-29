miniature view tests
testMiniatureSelects

	| slideToSelect miniatureToClick |
	5 timesRepeat: [self tool createSlide].
	slideToSelect := self tool slides at: 3.
	miniatureToClick := self tool miniatureOf: slideToSelect.
	self hand handleEvent: (self redMouseDownAt: miniatureToClick center).
	self assert: self tool currentSlide equals: slideToSelect