container tests
testDuplicateChild

	| container copy |
	self slide addContent: self morph.
	container := self morph owner.
	copy := container copyChildToHand.
	self assert: (self hand submorphs includes: copy)