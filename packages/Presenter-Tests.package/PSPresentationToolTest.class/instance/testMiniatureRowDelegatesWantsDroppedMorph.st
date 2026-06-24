as yet unclassified
testMiniatureRowDelegatesWantsDroppedMorph

	| row |
	row := PSMiniatureRow forMiniature: (self miniatureOf: self slides first) indent: 0.
	self deny: (row wantsDroppedMorph: Morph new event: nil)