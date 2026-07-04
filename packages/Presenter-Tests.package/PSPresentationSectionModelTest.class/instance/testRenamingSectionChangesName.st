section rename tests
testRenamingSectionChangesName

	self presentation addSectionNamed: 'Old' firstSlide: (self presentation slideAt: 1).
	self presentation renameSectionNamed: 'Old' to: 'New'.
	self
		deny: (self presentation hasSectionNamed: 'Old');
		assert: (self presentation hasSectionNamed: 'New')