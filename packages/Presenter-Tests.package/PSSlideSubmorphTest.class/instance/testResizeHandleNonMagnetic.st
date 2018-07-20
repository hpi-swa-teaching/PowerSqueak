container tests
testResizeHandleNonMagnetic

	| topLeft targetPoint |
	topLeft := self morph topLeft.
	targetPoint := self morph bottomRight + (20 @ 20).
	self drag: MouseEvent redButton from: self morph bottomRight  to: targetPoint.
	self slide fullBounds.
	self assert: self morph bounds equals: (topLeft corner: targetPoint)