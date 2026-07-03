tests shapes
testPlainRectangleIsNotRounded

	| container |
	container := self tool contentCreationController newRectangleShape.
	self deny: container content cornerStyle = #rounded