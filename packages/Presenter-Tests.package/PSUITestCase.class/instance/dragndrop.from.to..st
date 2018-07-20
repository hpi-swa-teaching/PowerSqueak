support
dragndrop: aMouseButton from: aPoint to: anotherPoint

	self drag: aMouseButton from: aPoint to: anotherPoint. 
	self hand handleEvent: (self mouse: aMouseButton upAt: anotherPoint)