timer tests
testShowTimerDisplaysTimer

	self container showTimer.
	self assert: self container timer notNil.
	self deny: self container timer owner isNil
