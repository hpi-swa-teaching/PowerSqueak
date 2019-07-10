event handling
mouseMove: anEvent
	
	(self isOnBorder: anEvent position)
		ifTrue: [Cursor currentCursor: Cursor crossHair]
		ifFalse:  [Cursor currentCursor: Cursor normal].
	self ifAnyHandleContains: anEvent position
		do: [:handle | self setCursorFor: (self resizeHandles keyAtValue: handle)]