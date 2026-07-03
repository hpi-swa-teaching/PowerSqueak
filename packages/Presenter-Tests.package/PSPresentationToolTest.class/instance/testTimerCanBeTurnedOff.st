timer tests
testTimerCanBeTurnedOff

	self enablePresentationMode.
	self assert: self slideContainer timer notNil.
	self slideContainer toggleTimer.
	self assert: self slideContainer timer isNil.
	self slideContainer toggleTimer.
	self assert: self slideContainer timer notNil