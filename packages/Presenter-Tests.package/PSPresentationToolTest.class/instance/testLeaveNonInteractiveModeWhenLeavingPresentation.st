presentation mode tests
testLeaveNonInteractiveModeWhenLeavingPresentation

	self pressKey: $i at: self slideContainer center.
	self pressKey: Character escape at: self slideContainer center.
	self assert: self tool isInteractive equals: true
	