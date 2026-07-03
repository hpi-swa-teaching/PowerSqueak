timer tests
testTimerCanBePaused

	self enablePresentationMode.
	self slideContainer togglePauseTimer.
	self assert: self slideContainer timerPaused.
	self slideContainer togglePauseTimer.
	self deny: self slideContainer timerPaused