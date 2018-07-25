dropping tests
testKeepsBoundsOnDrop

	| bounds |
	bounds := self morph bounds.
	
	self slide acceptDroppingMorph: self morph event: nil.
	self assert: self morph bounds equals: bounds