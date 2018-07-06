container tests
testContainerResizingCorner: aSymbol offset: aPoint
	
	| container oldExtent targetPoint event|
	self slide addContent: self morph.
	container := self morph owner.
	oldExtent := self morph extent.
	targetPoint := (container resizeHandles at: aSymbol) center + aPoint.
	event := MouseButtonEvent new setPosition: targetPoint.
	container dragCorner: aSymbol event: event fromHandle: nil.
	self slide fullBounds.
	self assert: self morph extent equals: oldExtent + aPoint abs