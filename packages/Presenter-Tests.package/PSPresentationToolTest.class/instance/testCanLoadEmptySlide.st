loading tests
testCanLoadEmptySlide

	| directory |
	directory := PSMockFileDirectory named: 'slide'.
	self 
		assert: 0
	 	equals: (self tool loadSlideFromDirectory: directory) submorphs size 