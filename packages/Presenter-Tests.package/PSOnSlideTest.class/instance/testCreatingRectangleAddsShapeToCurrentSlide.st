tests shapes
testCreatingRectangleAddsShapeToCurrentSlide

	| container |
	container := self tool contentCreationController newRectangleShape.
	self assert: (self slide submorphs includes: container).
	self assert: container content class equals: RectangleMorph