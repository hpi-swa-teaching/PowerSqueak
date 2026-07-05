miniature view tests
testMiniatureRightClick

	| miniatureToClick |
	miniatureToClick := self tool miniatureController miniatureOf: self createSlide.
	
	self assertContextMenuContent: miniatureToClick equals: (PSContextMenu generateListFrom: miniatureToClick defaultActions)