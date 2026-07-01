tests shapes
testCreatingArrowAddsShapeToCurrentSlide

	| container |
	container := self tool newArrowShape.
	self assert: (self slide submorphs includes: container).
	self assert: container content class equals: PolygonMorph