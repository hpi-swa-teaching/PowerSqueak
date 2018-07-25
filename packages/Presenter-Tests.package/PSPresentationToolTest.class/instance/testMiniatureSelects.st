miniature view tests
testMiniatureSelects

	| slideToSelect miniatureToClick |
	5 timesRepeat: [self createSlide].
	
	slideToSelect := self slides third.
	miniatureToClick := self tool miniatureOf: slideToSelect.
	self click: MouseEvent redButton at: miniatureToClick boundsInWorld center.
	
	self assert: self tool currentSlide equals: slideToSelect