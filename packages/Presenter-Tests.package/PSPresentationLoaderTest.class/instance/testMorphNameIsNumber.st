directory checking tests
testMorphNameIsNumber

	| presentationDirectory |
	presentationDirectory := PSMockFileDirectory from: 'Presentation' -> {
		'slides' -> {
			'slide1' -> {'1.morph' . '2.morph'}}.
		'layouts' -> {
			'layoutTest' -> {}}}.
	self assert: (self loader isValidPresentationDirectory: presentationDirectory)