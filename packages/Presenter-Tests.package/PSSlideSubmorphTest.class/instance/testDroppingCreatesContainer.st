submorph tests
testDroppingCreatesContainer

	self slide acceptDroppingMorph: self morph event: nil.
	self assert: self morph owner class = PSContentContainer.