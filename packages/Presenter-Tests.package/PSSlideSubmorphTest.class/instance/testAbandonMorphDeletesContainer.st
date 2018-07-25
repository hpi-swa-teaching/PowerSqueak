container tests
testAbandonMorphDeletesContainer

	self assert: (self submorphs includes: self container).
	self morph abandon.
	self deny: (self submorphs includes: self container)