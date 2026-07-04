tests shapes
testNewShapeUsesDefaultBorderWidth

	| container |
	container := self tool contentCreationController newRectangleShape.
	self
		assert: container content borderWidth
		equals: PSPresentationTool defaultShapeBorderWidth