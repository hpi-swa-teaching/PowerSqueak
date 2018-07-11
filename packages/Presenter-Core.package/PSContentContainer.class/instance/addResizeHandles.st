handles
addResizeHandles

	self hasHandles ifFalse: [
		self addHandleAt: #topLeft.
		self addHandleAt: #topRight.
		self addHandleAt: #bottomRight.
		self addHandleAt: #bottomLeft. 
		self placeHandles.
		self hasHandles: true]