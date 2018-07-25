container tests
testRemoveMorphAbandonsContainer

	self assert: (self submorphs includes: self container).
	self morph openInWorld: self world.
	self deny: (self submorphs includes: self container)