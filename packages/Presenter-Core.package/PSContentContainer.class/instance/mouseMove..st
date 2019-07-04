event handling
mouseMove: anEvent
	
	self ifAnyHandleContains: anEvent position
		do: [:handle | self setCursorFor: (self resizeHandles keyAtValue: handle)]
		ifNone: [Cursor currentCursor: Cursor normal]