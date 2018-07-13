support
click: aMouseButton at: aPoint

	self hand handleEvent: (self mouse: aMouseButton does: #mouseDown at: aPoint).
	self hand handleEvent: (self mouse: aMouseButton does: #mouseUp at: aPoint)