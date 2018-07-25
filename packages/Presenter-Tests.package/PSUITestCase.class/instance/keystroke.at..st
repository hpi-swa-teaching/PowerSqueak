input events
keystroke: char at: point

	^ KeyboardEvent new
		setType: #keystroke
		buttons: 0 "no modifiers"
		position: point
		keyValue: char asciiValue
		hand: self hand
		stamp: Time millisecondClockValue