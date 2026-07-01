tests shapes
testPlainRectangleIsNotRounded

	| container |
	container := self tool newRectangleShape.
	self deny: container content cornerStyle = #rounded