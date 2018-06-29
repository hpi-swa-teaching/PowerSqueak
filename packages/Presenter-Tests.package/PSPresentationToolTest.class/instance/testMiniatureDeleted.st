miniature view tests
testMiniatureDeleted

	| oldSize |
	self tool createSlide.
	oldSize := self tool slideMiniatures size.
	self tool deleteSlide.
	self assert: self tool slideMiniatures size equals: oldSize - 1