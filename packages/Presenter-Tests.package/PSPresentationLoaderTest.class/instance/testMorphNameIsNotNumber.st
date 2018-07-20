as yet unclassified
testMorphNameIsNotNumber

	| presentationDirectory |
	presentationDirectory := PSMockFileDirectory from: 'Presentation' -> {
		'slides' -> {
			'slide1' -> {'a.morph'}
		}
	}.
	self assert: false equals: (self loader isValidPresentationDirectory: presentationDirectory)