mock inputs
drag: aMouseButton from: aPoint to: anotherPoint

	self hand 
		handleEvent: (self mouse: aMouseButton downAt: aPoint);
		handleEvent: (self mouseMove: aMouseButton from: aPoint to: anotherPoint)