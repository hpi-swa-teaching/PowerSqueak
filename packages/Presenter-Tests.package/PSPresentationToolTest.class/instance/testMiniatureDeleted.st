miniature view tests
testMiniatureDeleted

	| oldSize |
	self createSlide.
	oldSize := self tool miniatureController slideMiniatures size.
	self tool deleteSlide.
	self assert: self tool miniatureController slideMiniatures size equals: oldSize - 1