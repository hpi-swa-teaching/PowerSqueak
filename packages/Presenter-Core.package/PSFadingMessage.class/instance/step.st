stepping and presenter
step
	
	self remaining <= 0
		ifTrue: [ self delete ]
		ifFalse: [self updateColor]