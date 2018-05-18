submorph tests
testSlideDropping

	| slide morphExtent morphPosition |
	slide := self tool slideAt: 1.
	
	self morph position: slide position + (10@10).
	morphPosition := self morph position.
	morphExtent := self morph extent.
	
	slide acceptDroppingMorph: self morph event: nil.
	self assert: self morph position = morphPosition.
	self assert: self morph extent = morphExtent.