support
blueMouseDownAt: point

	^ MouseButtonEvent new
		setType: #mouseDown
		position: point
		which: 2r000 "no change"
		buttons: 2r001 "blue pressed"
		hand: self hand
		stamp: Time millisecondClockValue