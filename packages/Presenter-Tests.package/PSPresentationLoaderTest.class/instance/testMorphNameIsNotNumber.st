directory checking
testMorphNameIsNotNumber

	| presentationDirectory |
	presentationDirectory := PSMockFileDirectory from: 'Presentation' -> {
		'slides' -> {
			'slide1' -> {'a.morph'}}}.
	self deny: (self loader isValidPresentationDirectory: presentationDirectory)