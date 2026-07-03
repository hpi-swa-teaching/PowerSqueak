tests shapes
testCreatingCircleAddsShapeToCurrentSlide

	| container |
	container := self tool contentCreationController newCircleShape.
	self assert: (self slide submorphs includes: container).
	self assert: container content class equals: CircleMorph 