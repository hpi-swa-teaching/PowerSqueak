timer tests
testToggleTimerTogglesPresence

	self assert: self container timer isNil.
	self container toggleTimer.
	self assert: self container timer notNil.
	self container toggleTimer.
	self assert: self container timer isNil
