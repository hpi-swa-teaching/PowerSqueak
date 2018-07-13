miniature view tests
testMiniatureSelects

	| slideToSelect miniatureToClick |
	5 timesRepeat: [self tool createSlide].
	slideToSelect := self slides third.
	miniatureToClick := self tool miniatureOf: slideToSelect.
	self hand handleEvent: (self redMouseDownAt: miniatureToClick boundsInWorld center).
	self assert: self tool currentSlide equals: slideToSelect