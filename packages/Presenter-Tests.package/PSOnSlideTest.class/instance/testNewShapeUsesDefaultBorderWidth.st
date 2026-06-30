tests shapes
testNewShapeUsesDefaultBorderWidth

	| container |
	container := self tool newRectangleShape.
	self
		assert: container content borderWidth
		equals: PSPresentationTool defaultShapeBorderWidth