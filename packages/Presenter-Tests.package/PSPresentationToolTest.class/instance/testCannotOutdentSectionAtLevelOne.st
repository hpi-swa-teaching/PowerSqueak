section level tests
testCannotOutdentSectionAtLevelOne

	self presentation addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 1).
	self deny: (self presentation canOutdentSection: (self presentation sectionNamed: 'Intro'))
