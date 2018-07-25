presentation mode tests
testLeaveNonInteractiveMode

	self 
		enablePresentationMode;
		pressKey: $i at: self slideContainer center;
		pressKey: $i at: self slideContainer center;
		assert: self tool isInteractive