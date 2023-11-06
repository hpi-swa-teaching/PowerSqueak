running
initializeHand

	self hand: HandMorph new.
	
	self world
		removeHand: self world firstHand; "the default hand"
		addHand: self hand