container tests
testContainerResizingCorner: aSymbol offset: aPoint
	
	| oldExtent handlePosition |
	oldExtent := self morph extent.
	handlePosition := (self container resizeHandles at: aSymbol) center.
	self dragndrop: MouseEvent redButton from: handlePosition to: handlePosition+aPoint.
	self slide fullBounds.
	self assert: self morph extent equals: oldExtent + aPoint abs