drag and drop tests
testMiniatureDoesNotWantNonMiniature

	| miniature |
	miniature := self miniatureOf: (self presentation slideAt: 1).
	self deny: (miniature wantsDroppedMorph: Morph new event: nil)