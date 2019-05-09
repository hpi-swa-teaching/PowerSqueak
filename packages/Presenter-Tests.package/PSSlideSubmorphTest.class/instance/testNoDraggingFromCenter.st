as yet unclassified
testNoDraggingFromCenter
	
	| previousCenter |
	previousCenter := self container center.
	self dragndrop: MouseEvent redButton from: self container center to: self container center + self defaultDragOffset.
	self slide fullBounds.
	
	self assert: self container center equals: previousCenter