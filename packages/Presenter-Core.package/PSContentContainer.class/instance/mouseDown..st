event handling
mouseDown: evt
	
	evt yellowButtonPressed ifTrue: [^ self abandon].
	self resizeHandles withIndexDo: [:each :index | (each containsPoint: evt position) ifTrue: [
			^ evt hand newMouseFocus: (self resizeHandles at: index)]].
	evt hand grabMorph: self child