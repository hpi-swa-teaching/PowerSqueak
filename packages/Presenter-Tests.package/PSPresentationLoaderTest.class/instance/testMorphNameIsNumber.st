as yet unclassified
testMorphNameIsNumber

	| presentationDirectory |
	presentationDirectory := PSMockFileDirectory from: 'Presentation' -> {
		'slides' -> {
			'slide1' -> {'1.morph' . '2.morph'}
		}
	}.
	self assert: true equals: (self loader isValidPresentationDirectory: presentationDirectory)