presentation loading tests
testCanLoadEmptySlide

	| directory |
	directory := PSMockFileDirectory named: 'slide'.
	self 
		assert: (self loader loadSlideFromDirectory: directory) submorphs isEmpty