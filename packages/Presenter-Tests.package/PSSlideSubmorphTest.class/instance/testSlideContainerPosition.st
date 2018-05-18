submorph tests
testSlideContainerPosition

	| container morphPosition |
	morphPosition := self morph position.
	
	self slide acceptDroppingMorph: self morph event: nil.
	container := self morph owner.
	
	self assert: container position = morphPosition.
	self assert: container extent = self morph extent