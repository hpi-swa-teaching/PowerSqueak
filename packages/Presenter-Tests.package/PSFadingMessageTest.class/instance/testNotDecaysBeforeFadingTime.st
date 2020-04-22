decaying tests
testNotDecaysBeforeFadingTime

	self stepCount - 1 
		timesRepeat: [self message step].
	self deny: (self isAbandoned: self message)