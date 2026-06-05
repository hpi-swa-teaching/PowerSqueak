timer tests
testTogglePauseTimerTogglesPausedState

	self container showTimer.
	self deny: self container timerPaused.
	self container togglePauseTimer.
	self assert: self container timerPaused.
	self container togglePauseTimer.
	self deny: self container timerPaused
