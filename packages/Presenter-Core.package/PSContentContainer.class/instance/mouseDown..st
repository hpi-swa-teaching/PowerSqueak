event handling
mouseDown: evt

	self addResizeHandles.
	self resizeHandles withIndexDo: [:each :index | (each containsPoint: evt position) ifTrue: [
			evt hand newMouseFocus: (self resizeHandles at: index)]]