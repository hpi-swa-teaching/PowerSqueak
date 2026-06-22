section tests
testCreateSectionNamedAddsNamedSection

	self tool createSectionNamed: 'Intro' startingAt: (self presentation slideAt: 1).
	self assert: (self presentation hasSectionNamed: 'Intro')
