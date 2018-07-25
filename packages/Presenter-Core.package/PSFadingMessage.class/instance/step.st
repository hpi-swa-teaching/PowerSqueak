stepping and presenter
step
	
	self remainingTime: self remainingTime - self stepTime.
	self remainingTime <= 0
		ifTrue: [self delete]
		ifFalse: [self updateColor]