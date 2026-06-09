timer tests
testTimerCanBePaused

	self enablePresentationMode.
	self pressKey: $h at: self slideContainer center.
	self assert: self slideContainer timerPaused.
	self pressKey: $h at: self slideContainer center.
	self deny: self slideContainer timerPaused
