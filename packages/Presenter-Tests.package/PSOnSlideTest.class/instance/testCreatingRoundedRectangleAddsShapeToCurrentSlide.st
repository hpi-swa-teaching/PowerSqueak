tests shapes
testCreatingRoundedRectangleAddsShapeToCurrentSlide

	| container |
	container := self tool contentCreationController newRoundedRectangleShape.
	self assert: (self slide submorphs includes: container).
	self assert: container content class equals: RectangleMorph