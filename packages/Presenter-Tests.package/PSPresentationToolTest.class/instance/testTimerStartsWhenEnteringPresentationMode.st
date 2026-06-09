timer tests
testTimerStartsWhenEnteringPresentationMode

	self enablePresentationMode.
	self assert: self slideContainer timer notNil.
	self deny: self slideContainer timer owner isNil
