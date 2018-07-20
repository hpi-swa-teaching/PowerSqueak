input events
mouse: aButtonCode does: aType at: aPoint

	^ MouseButtonEvent new
		setType: aType
		position: aPoint
		which: 2r000 "no change"
		buttons: aButtonCode
		hand: self hand
		stamp: Time millisecondClockValue