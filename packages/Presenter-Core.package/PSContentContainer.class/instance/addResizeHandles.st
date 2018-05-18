as yet unclassified
addResizeHandles

	self hasHandles ifFalse: [
	self corners
		withIndexDo: [:each :index |
			| handle | 
			handle := RectangleMorph
				newBounds: (Rectangle center: each extent: self resizeHandleSize)
				color: Color black.
			self resizeHandles add: handle.
			self addMorph: handle.
			handle
				on: #mouseMove
				send: #dragCorner:event:fromHandle:
				to: self
				withValue: index].
			self hasHandles: true]