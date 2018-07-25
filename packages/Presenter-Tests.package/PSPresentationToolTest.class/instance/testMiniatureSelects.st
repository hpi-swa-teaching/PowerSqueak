miniature view tests
testMiniatureSelects

	| slideToSelect miniatureToClick |
	5 timesRepeat: [self createSlide].
	
	slideToSelect := self slides third.
	miniatureToClick := self miniatureOf: slideToSelect.
	
	self 
		click: MouseEvent redButton at: miniatureToClick boundsInWorld center;
	 	assert: self currentSlide equals: slideToSelect