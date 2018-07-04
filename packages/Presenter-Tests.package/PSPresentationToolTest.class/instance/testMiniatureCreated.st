miniature view tests
testMiniatureCreated

	| oldSize |
	oldSize := self tool slideMiniatures size.
	self tool createSlide.
	self assert: self tool slideMiniatures size equals: oldSize + 1