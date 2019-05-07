accessing
testRectangleShapeIsRectangle

	self tool newRectangleShape.
	self assert: (self hand submorphs first isKindOf: RectangleMorph).
	