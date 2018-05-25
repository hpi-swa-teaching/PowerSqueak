initialize-release
addResizeHandles

	self hasHandles ifFalse: [
	self corners
		withIndexDo: [:each :index |
			| handle | 
			handle := RectangleMorph
				newBounds: (Rectangle center: each extent: self resizeHandleSize)
				color: Color black.
			handle setProperty: #morphicLayerNumber toValue: self handleLayerNumber.
			self resizeHandles add: handle.
			self addMorphInLayer: handle.
			handle
				on: #mouseMove
				send: #dragCorner:event:fromHandle:
				to: self
				withValue: index].
			self hasHandles: true]