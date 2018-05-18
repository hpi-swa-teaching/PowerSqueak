submorph tests
testSlideDropping

	| morphExtent morphPosition |
	
	morphPosition := self morph position.
	morphExtent := self morph extent.
	
	self slide acceptDroppingMorph: self morph event: nil.
	self assert: self morph position = morphPosition.
	self assert: self morph extent = morphExtent.