mock inputs
click: aMouseButton at: aPoint

	ActiveHand := self hand.
	self hand handleEvent: (self mouse: aMouseButton downAt: aPoint).
	self hand handleEvent: (self mouse: aMouseButton upAt: aPoint).
	self world doOneCycle