mock inputs
pressKey: char at: point

	ActiveHand := self hand.
	self hand handleEvent: (self keystroke: char at: point).
	self world doOneCycle