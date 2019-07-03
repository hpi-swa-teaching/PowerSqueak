container tests
testContainerResizingCorner: aSymbol
	
	| expectedBounds handlePosition |
	self selectContainer.
	self slide fullBounds.
	handlePosition := (self container resizeHandles at: aSymbol) center.
	expectedBounds := self container bounds 
		withSideOrCorner: aSymbol 
		setToPoint: handlePosition + self defaultDragOffset.
	self dragndrop: MouseEvent redButton from: handlePosition to: handlePosition + self defaultDragOffset.
	self slide fullBounds.
	
	self assert: self container bounds equals: expectedBounds