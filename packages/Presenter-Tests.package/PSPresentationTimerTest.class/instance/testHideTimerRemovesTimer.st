timer tests
testHideTimerRemovesTimer

	self container showTimer.
	self container hideTimer.
	self assert: self container timer isNil
