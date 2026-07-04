section creation tests
testCreatingSectionAddsIt

	self presentation addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 1).
	self assert: (self presentation hasSectionNamed: 'Intro')