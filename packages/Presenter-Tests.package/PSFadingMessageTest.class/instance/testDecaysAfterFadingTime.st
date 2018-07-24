decaying
testDecaysAfterFadingTime

	self stepCount + 1 
		timesRepeat: [self message step].
	self assert: self message owner equals: nil