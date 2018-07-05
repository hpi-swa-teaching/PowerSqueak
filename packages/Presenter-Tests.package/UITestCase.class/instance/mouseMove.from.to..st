support
mouseMove: aMouseButton from: aPoint to: anotherPoint

	^ MouseMoveEvent new
		setType: #mouseMove
		startPoint: aPoint
		endPoint: anotherPoint
		trail: #()
		buttons: aMouseButton
		hand: self hand
		stamp: Time millisecondClockValue