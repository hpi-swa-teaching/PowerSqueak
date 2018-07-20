container tests
testContainerResizingCorner: aSymbol offset: aPoint
	
	| expectedBounds handlePosition |
	handlePosition := (self container resizeHandles at: aSymbol) center.
	expectedBounds :=  self morph bounds 
		withSideOrCorner: aSymbol 
		setToPoint: handlePosition + aPoint.
	self dragndrop: MouseEvent redButton from: handlePosition to: handlePosition+aPoint.
	self slide fullBounds.
	self assert: self morph bounds equals: expectedBounds