slide section tests
testCreateSlideSection

	self tool createSectionNamed: 'Einleitung' startingAt: 1.
	self
		assert: (self presentation hasSectionStartingAt: 1);
		assert: (self presentation sectionNameStartingAt: 1) equals: 'Einleitung'
