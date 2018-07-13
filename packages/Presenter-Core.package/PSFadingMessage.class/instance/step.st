stepping and presenter
step
	
	self remaining: self remaining - self stepTime.
	self remaining <= 0
		ifTrue: [ self delete ]
		ifFalse: [self updateColor]