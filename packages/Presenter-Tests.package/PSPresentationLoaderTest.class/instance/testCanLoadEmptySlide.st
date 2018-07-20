as yet unclassified
testCanLoadEmptySlide

	| directory |
	directory := PSMockFileDirectory named: 'slide'.
	self 
		assert: 0
	 	equals: (self loader loadSlideFromDirectory: directory) submorphs size 