decaying tests
testDecaysAfterFadingTime

	self stepCount + 1
		timesRepeat: [self message step].
	self assert: (self isAbandoned: self message)