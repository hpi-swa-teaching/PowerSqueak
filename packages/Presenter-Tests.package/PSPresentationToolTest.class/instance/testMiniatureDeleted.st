miniature view tests
testMiniatureDeleted

	| oldSize |
	self createSlide.
	oldSize := self slideMiniatures size.
	self tool deleteSlide.
	self assert: self slideMiniatures size equals: oldSize - 1