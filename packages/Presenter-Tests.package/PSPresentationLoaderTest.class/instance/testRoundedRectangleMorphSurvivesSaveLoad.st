presentation loading tests
testRoundedRectangleMorphSurvivesSaveLoad

	| loadedContent |
	loadedContent := self loadedContentAfterSaving: (RectangleMorph new
		cornerStyle: #rounded;
		yourself).

	self assert: loadedContent class equals: RectangleMorph.
	self assert: loadedContent cornerStyle equals: #rounded