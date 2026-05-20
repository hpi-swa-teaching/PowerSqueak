section rename tests
testDuplicateSectionNamesAreRejectedOnRename

	self createSlide.
	self presentation
		addSectionNamed: 'Intro' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Body' firstSlide: (self presentation slideAt: 2).
	self should: [self presentation renameSectionNamed: 'Body' to: 'Intro']
		raise: Error.
	self assert: (self presentation hasSectionNamed: 'Body')