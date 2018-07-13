handles
addResizeHandles

	self hasHandles ifFalse: [
		self 
			addHandleAt: #topLeft;
			addHandleAt: #topRight;
			addHandleAt: #bottomRight;
			addHandleAt: #bottomLeft;
			placeHandles;
			hasHandles: true]