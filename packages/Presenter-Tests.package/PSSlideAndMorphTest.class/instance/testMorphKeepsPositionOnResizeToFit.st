resizeToFit tests
testMorphKeepsPositionOnResizeToFit

	| position |
	position := self morph position.
	self assert: [position = self morph position] onResizeToFit: self morph