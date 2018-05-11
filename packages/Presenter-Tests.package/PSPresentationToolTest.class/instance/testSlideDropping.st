slide resizing tests
testSlideDropping

	| slide morph morphExtent morphPosition |
	[self assert: (self tool slideCount = 1).
	slide := self tool slideAt: 1.
	
	morph := Morph new openInWorld.
	morph position: slide position + (10@10).
	morphPosition := morph position.
	morphExtent := morph extent.
	
	slide acceptDroppingMorph: morph event: nil.
	self assert: morph position = morphPosition.
	self assert: morph extent = morphExtent.
	] ensure: [morph ifNotNil: [morph abandon]]