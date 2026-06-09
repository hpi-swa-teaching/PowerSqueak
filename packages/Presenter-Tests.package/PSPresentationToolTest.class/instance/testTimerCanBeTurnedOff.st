timer tests
testTimerCanBeTurnedOff

	self enablePresentationMode.
	self assert: self slideContainer timer notNil.
	self pressKey: $t at: self slideContainer center.
	self assert: self slideContainer timer isNil.
	self pressKey: $t at: self slideContainer center.
	self assert: self slideContainer timer notNil
