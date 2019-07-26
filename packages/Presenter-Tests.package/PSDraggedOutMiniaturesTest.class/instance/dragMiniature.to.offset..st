dragging
dragMiniature: aMiniature to: anotherMiniature offset: aPoint

	self dragndrop: MouseEvent redButton
		from: aMiniature boundsInWorld center
		to: (anotherMiniature boundsInWorld center + aPoint).

	^ aMiniature
	