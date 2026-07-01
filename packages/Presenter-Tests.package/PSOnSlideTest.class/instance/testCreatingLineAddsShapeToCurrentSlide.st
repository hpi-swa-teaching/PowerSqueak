tests shapes
testCreatingLineAddsShapeToCurrentSlide

	| container |
	container := self tool newLineShape.
	self assert: (self slide submorphs includes: container).
	self assert: container content class equals: LineMorph new class