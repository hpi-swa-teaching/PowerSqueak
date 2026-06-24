insert tests
testInsertShapeNamesHasFourShapes

	| shapeNames |
	shapeNames := self tool insertShapeNames.
	self
		assert: shapeNames size
		equals: 4.
	self
		assert: shapeNames keys asSortedCollection asArray
		equals: #('Arrow' 'Circle' 'Line' 'Rectangle').
	self assert: (shapeNames values allSatisfy: [:each | each isKindOf: BlockClosure])
