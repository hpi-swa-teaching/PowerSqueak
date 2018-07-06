container tests
testContainerResizing
	
	| container topLeft targetPoint event|
	self slide addContent: self morph.
	container := self morph owner.
	topLeft := self morph topLeft.
	targetPoint := self morph bottomRight + (20 @ 20).
	event := MouseButtonEvent new setPosition: targetPoint.
	container dragCorner: #bottomRight event: event fromHandle: nil.
	self slide fullBounds.
	self assert: self morph bounds = (topLeft corner: targetPoint)