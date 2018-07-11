support
drag: aMouseButton from: aPoint to: anotherPoint

	self hand handleEvent: (self mouse: aMouseButton does: #mouseDown at: aPoint).
	self hand handleEvent: (self mouseMove: aMouseButton from: aPoint to: anotherPoint)