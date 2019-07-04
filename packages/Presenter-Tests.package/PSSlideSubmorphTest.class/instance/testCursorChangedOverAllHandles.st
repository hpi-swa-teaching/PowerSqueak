container tests
testCursorChangedOverAllHandles

	self testCursorChangedOverHandle: #topLeft toCursor: Cursor resizeTopLeft.
	self testCursorChangedOverHandle: #topRight toCursor: Cursor resizeTopRight.
	self testCursorChangedOverHandle: #bottomLeft toCursor: Cursor resizeBottomLeft.
	self testCursorChangedOverHandle: #bottomRight toCursor: Cursor resizeBottomRight