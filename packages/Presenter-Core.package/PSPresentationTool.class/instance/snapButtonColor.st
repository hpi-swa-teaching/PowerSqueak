toolbuilder
snapButtonColor

	^ self snapActive 
		ifTrue: [self class highlightColor]
		ifFalse: [Color transparent]