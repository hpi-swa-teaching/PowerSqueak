miniature view tests
testMiniatureRightClick

	| miniatureToClick |

	miniatureToClick := self miniatureOf: self createSlide.
	
	self 
		click: MouseEvent yellowButton at: miniatureToClick boundsInWorld center;
		assertContextMenuContent: self morph equals: miniatureToClick defaultContextMenuContent