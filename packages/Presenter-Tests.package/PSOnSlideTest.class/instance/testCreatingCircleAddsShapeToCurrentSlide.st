shape creation tests
testCreatingCircleAddsShapeToCurrentSlide

	| container |
	container := self tool newCircleShape.
	self assert: (self slide submorphs includes: container).
	self assert: container content class equals: CircleMorph 