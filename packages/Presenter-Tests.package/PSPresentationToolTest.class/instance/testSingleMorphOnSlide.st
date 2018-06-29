loading tests
testSingleMorphOnSlide

	| presentationDirectory |
	presentationDirectory := PSMockFileDirectory from: 'Presentation' -> {
		'slides' -> {
			'slide1' -> {'a.morph'}
		}
	}.
	self assert: false equals: (self tool isValidPresentationDirectory: presentationDirectory).
	
	presentationDirectory := PSMockFileDirectory from: 'Presentation' -> {
		'slides' -> {
			'slide1' -> {'1.morph' . '2.morph'}
		}
	}.
	self assert: true equals: (self tool isValidPresentationDirectory: presentationDirectory)