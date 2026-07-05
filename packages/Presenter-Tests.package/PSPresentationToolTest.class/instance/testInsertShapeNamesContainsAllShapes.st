content tests
testInsertShapeNamesContainsAllShapes

	| shapeNames |
	shapeNames := self tool contentCreationController insertShapeNames.
	self
		assert: shapeNames keys asSortedCollection asArray
		equals: #('Arrow' 'Circle' 'Line' 'Rectangle' 'Rounded rectangle').
	self assert: (shapeNames values allSatisfy: [:each | each isKindOf: BlockClosure])