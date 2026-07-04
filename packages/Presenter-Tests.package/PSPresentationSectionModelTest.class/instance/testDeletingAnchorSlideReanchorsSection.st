section membership tests
testDeletingAnchorSlideReanchorsSection

	2 timesRepeat: [self createSlide].
	self presentation addSectionNamed: 'Body' firstSlide: (self presentation slideAt: 2).
	self presentation deleteSlideAt: 2.
	self assert: (self presentation hasSectionNamed: 'Body').
	self assert: (self presentation sectionNamed: 'Body') firstSlide
		equals: (self presentation slideAt: 2)