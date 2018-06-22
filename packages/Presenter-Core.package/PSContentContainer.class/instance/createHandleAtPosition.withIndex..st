handles
createHandleAtPosition: aPosition withIndex: anIndex

	| handle |
	handle := RectangleMorph
		newBounds: (Rectangle center: aPosition extent: self resizeHandleSize)
		color: Color black.
	handle
		on: #mouseMove
		send: #dragCorner:event:fromHandle:
		to: self
		withValue: anIndex.
	^ handle