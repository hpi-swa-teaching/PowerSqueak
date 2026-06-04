presentation mode
toggleTimer

	self timer isNil
		ifTrue: [self showTimer]
		ifFalse: [self hideTimer]
