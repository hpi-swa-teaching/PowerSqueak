loading tests
testMorphNameIsNotNumber

	| presentationDirectory |
	presentationDirectory := PSMockFileDirectory from: 'Presentation' -> {
		'slides' -> {
			'slide1' -> {'a.morph'}
		}
	}.
	self assert: false equals: (self tool isValidPresentationDirectory: presentationDirectory)