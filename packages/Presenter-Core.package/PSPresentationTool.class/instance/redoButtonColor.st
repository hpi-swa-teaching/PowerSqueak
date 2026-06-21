toolbuilder
redoButtonColor

	^ self canRedo
		ifTrue: [self class highlightColor]
		ifFalse: [Color transparent]