decaying
testNotDecaysBeforeFadingTime

	self stepCount - 1 
		timesRepeat: [self message step].
	self deny: self message owner = nil