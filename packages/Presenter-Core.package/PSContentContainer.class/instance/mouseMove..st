event handling
mouseMove: anEvent

	Cursor currentCursor: ((self isOnBorder: anEvent position)
		ifTrue: [Cursor crossHair]
		ifFalse: [Cursor normal]).
	self
		ifAnyHandleContains: anEvent position
		do: [:handle | self setCursorFor: (self resizeHandles keyAtValue: handle)]