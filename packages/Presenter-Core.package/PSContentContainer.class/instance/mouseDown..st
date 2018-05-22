event handling
mouseDown: evt

	self resizeHandles withIndexDo: [:each :index | (each containsPoint: evt position) ifTrue: [
			evt hand newMouseFocus: (self resizeHandles at: index)]]