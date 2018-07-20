inputs
click: aMouseButton at: aPoint

	self hand handleEvent: (self mouse: aMouseButton downAt: aPoint).
	self hand handleEvent: (self mouse: aMouseButton upAt: aPoint)