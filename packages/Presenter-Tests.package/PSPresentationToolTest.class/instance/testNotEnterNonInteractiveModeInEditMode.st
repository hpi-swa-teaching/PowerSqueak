presentation mode tests
testNotEnterNonInteractiveModeInEditMode
	
	self 
		pressKey: $i at: self slideContainer center;
		assert: self isInteractive