running
setUp

	super setUp.
	"This needs to be set because morphic tends to set the active hand to the main project hand"
	"self world activeHand: self hand"