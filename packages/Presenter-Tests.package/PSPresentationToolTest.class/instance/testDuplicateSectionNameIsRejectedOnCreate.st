section creation tests
testDuplicateSectionNameIsRejectedOnCreate

	self createSlide.
	self presentation addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 1).
	self should: [self presentation addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 2)]
		raise: Error.
	self assert: self presentation sections size equals: 1