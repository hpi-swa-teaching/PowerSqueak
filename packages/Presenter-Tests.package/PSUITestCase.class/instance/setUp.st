running
setUp

	"This needs to be set because morphic tends to set the active hand to the main project hand.
	Point it at the test hand so simulated events and hand-based actions stay in the test world."
	super setUp.
	ActiveHand := self hand.
	self world doOneCycle