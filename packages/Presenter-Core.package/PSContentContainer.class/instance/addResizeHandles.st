handles
addResizeHandles

	self hasHandles ifFalse: [
		self addHandleAtPosition: self topLeft withIndex: #topLeft.
		self addHandleAtPosition: self topRight withIndex: #topRight.
		self addHandleAtPosition: self bottomRight withIndex: #bottomRight.
		self addHandleAtPosition: self bottomLeft withIndex: #bottomLeft. 
		self hasHandles: true]