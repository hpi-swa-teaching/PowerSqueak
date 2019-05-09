as yet unclassified
testBorderDragging
	
	| destination |
	destination := self morph center + self defaultDragOffset.
	self dragndrop: MouseEvent redButton from: self container leftCenter + (1@0) to: self container leftCenter + self defaultDragOffset + (1@0).
	self slide fullBounds.
	
	self assert: self morph center equals: destination