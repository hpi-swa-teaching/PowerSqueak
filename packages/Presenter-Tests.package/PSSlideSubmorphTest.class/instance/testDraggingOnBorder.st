container tests
testDraggingOnBorder
	
	| dragStart bounds |
	self selectContainer.
	self slide fullBounds.
	bounds := self morph bounds.
	dragStart := self container topCenter + (0@1).
	self  dragndrop: MouseEvent redButton from: dragStart to: dragStart + self defaultDragOffset.
	self assert: self morph bounds equals: (bounds translateBy: self defaultDragOffset)