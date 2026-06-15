section tests
testRenameSectionRenamesNamedSection

	self presentation addSectionNamed: 'Old' firstSlide: (self presentation slideAt: 1).
	self tool renameSectionNamed: 'Old' to: 'New'.
	self
		assert: (self presentation hasSectionNamed: 'New');
		deny: (self presentation hasSectionNamed: 'Old')
