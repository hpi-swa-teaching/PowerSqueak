container tests
testContainerResizingCorner: aNumber offset: aPoint
	
	| container oldExtent targetPoint event|
	self slide addContent: self morph.
	container := self morph owner.
	oldExtent := self morph extent.
	targetPoint := (container resizeHandles at: aNumber) center + aPoint.
	event := MouseButtonEvent new setPosition: targetPoint.
	container dragCorner: aNumber event: event fromHandle: nil.
	self slide fullBounds.
	self assert: self morph extent equals: oldExtent + aPoint abs