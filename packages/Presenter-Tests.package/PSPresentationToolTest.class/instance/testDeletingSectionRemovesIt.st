section deletion tests
testDeletingSectionRemovesIt

	self presentation addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 1).
	self presentation removeSectionNamed: 'Intro'.
	self deny: (self presentation hasSectionNamed: 'Intro')