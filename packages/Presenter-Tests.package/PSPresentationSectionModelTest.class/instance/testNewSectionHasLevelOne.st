section level tests
testNewSectionHasLevelOne

	self presentation addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 1).
	self assert: (self presentation sectionNamed: 'Intro') level equals: 1
