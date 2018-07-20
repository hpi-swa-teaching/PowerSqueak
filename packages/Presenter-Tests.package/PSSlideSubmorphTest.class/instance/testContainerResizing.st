container tests
testContainerResizing
	
	| topLeft targetPoint event|
	topLeft := self morph topLeft.
	targetPoint := self morph bottomRight + (20 @ 20).
	event := MouseButtonEvent new setPosition: targetPoint.
	self container dragBottomRightEvent: event fromHandle: nil.
	self slide fullBounds.
	self assert: self morph bounds = (topLeft corner: targetPoint)