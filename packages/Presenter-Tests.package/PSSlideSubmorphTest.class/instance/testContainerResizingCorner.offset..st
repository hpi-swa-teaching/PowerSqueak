container tests
testContainerResizingCorner: aSymbol offset: aPoint
	
	| oldExtent targetPoint|
	oldExtent := self morph extent.
	targetPoint := (self container resizeHandles at: aSymbol) center + aPoint.
	"event := MouseButtonEvent new setPosition: targetPoint.
	self container dragCorner: aSymbol event: event fromHandle: nil."	
	self drag: MouseEvent redButton from: targetPoint-aPoint to: targetPoint.
	self slide fullBounds.
	self assert: self morph extent equals: oldExtent + aPoint abs