container tests
testContainerResizingCorner: aSymbol
	
	| expectedBounds handlePosition |
	self selectContainer.
	handlePosition := (self container resizeHandles at: aSymbol) center.
	expectedBounds := self morph bounds 
		withSideOrCorner: aSymbol 
		setToPoint: handlePosition + self defaultDragOffset.
	self dragndrop: MouseEvent redButton from: handlePosition to: handlePosition + self defaultDragOffset.
	self slide fullBounds.
	
	self assert: self morph bounds equals: expectedBounds