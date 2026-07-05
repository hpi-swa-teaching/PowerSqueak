presentation mode tests
testLeaveNonInteractiveMode

      [self enablePresentationMode.
	self tool toggleInteractivity.
	self deny: self isInteractive.

	self tool toggleInteractivity.
	self assert: self isInteractive]
	ensure: [self tool disablePresentationMode]