presentation mode tests
testLeaveNonInteractiveModeWhenLeavingPresentation

	self 
		pressKey: $i at: self slideContainer center;
		pressKey: Character escape at: self slideContainer center;
		assert: self isInteractive
	