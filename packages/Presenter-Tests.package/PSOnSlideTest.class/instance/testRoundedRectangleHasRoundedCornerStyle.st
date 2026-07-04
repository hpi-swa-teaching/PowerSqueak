tests shapes
testRoundedRectangleHasRoundedCornerStyle

	| container |
	container := self tool contentCreationController newRoundedRectangleShape.
	self assert: container content cornerStyle equals: #rounded