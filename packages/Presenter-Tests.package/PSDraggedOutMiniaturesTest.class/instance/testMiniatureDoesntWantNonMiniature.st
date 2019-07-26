dragging in tests
testMiniatureDoesntWantNonMiniature

	self deny: (self miniature wantsDroppedMorph: Morph new event: nil)
	