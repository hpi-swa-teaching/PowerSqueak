presentation mode tests
testLeaveNonInteractiveMode

	self enablePresentationMode.
	self pressKey: $i at: self slideContainer center.
	self pressKey: $i at: self slideContainer center.
	self assert: self isInteractive equals: true
	