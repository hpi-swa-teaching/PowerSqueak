container tests
testGrabbing
	
	self container grabChild.
	self assert: self morph owner equals: self hand