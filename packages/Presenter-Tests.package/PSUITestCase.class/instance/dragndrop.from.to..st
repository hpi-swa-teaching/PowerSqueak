mock inputs
dragndrop: aMouseButton from: aPoint to: anotherPoint

	ActiveHand := self hand.
	self drag: aMouseButton from: aPoint to: anotherPoint.
	self hand handleEvent: (self mouse: aMouseButton upAt: anotherPoint).
	self world doOneCycle