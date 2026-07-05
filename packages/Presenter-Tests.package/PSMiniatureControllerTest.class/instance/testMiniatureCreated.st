miniature view tests
testMiniatureCreated

	| oldSize |
	oldSize := self slideMiniatures size.
	self 
		createSlide;
		assert: self slideMiniatures size equals: oldSize + 1