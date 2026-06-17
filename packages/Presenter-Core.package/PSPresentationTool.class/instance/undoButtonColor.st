toolbuilder
undoButtonColor

	^ self canUndo
		ifTrue: [self class highlightColor]
		ifFalse: [Color transparent]