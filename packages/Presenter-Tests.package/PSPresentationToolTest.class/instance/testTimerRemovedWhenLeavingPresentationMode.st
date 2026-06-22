timer tests
testTimerRemovedWhenLeavingPresentationMode

	self enablePresentationMode.
	self pressKey: Character escape at: self slideContainer center.
	self assert: self slideContainer timer isNil
