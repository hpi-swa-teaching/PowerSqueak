inputs
pressKey: char at: point

	self hand handleEvent: (self keystroke: char at: point)