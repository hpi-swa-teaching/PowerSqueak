mock inputs
drag: aMouseButton from: aPoint to: anotherPoint

	self hand handleEvent: (self mouse: aMouseButton downAt: aPoint).
	self hand handleEvent: (self mouseMove: aMouseButton from: aPoint to: anotherPoint)