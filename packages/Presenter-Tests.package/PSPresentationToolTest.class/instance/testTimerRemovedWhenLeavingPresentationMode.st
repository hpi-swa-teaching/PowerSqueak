timer tests
testTimerRemovedWhenLeavingPresentationMode

	self enablePresentationMode.
	self tool disablePresentationMode.
	self assert: self slideContainer timer isNil