container tests
testGrabbing
	
	| container |
	self slide addContent: self morph.
	container := self morph owner.
	container grabChild.
	self assert: self morph owner equals: self hand