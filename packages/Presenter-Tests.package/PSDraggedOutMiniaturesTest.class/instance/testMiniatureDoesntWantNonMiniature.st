as yet unclassified
testMiniatureDoesntWantNonMiniature

	self deny: (self miniature wantsDroppedMorph: Morph new event: nil)
	