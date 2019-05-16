miniature view tests
testMiniatureRightClick

	| miniatureToClick |
	miniatureToClick := self miniatureOf: self createSlide.
	
	self assertContextMenuContent: miniatureToClick equals: miniatureToClick defaultContextMenuContent