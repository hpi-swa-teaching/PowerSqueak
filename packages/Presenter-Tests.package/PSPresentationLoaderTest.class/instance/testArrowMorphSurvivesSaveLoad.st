presentation loading tests
testArrowMorphSurvivesSaveLoad

	| arrow |
	arrow := PolygonMorph new
		setVertices: {(0 @ 1). (6 @ 1). (6 @ 2). (8 @ 0). (6 @ -2). (6 @ -1). (0 @ -1)} * 10;
		yourself.

	self assert: (self loadedContentAfterSaving: arrow) class equals: PolygonMorph