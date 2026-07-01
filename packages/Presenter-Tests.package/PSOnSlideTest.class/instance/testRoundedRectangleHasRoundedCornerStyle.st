tests shapes
testRoundedRectangleHasRoundedCornerStyle

	| container |
	container := self tool newRoundedRectangleShape.
	self assert: container content cornerStyle equals: #rounded