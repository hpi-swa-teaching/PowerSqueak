section collapse tests
testCollapseAllSectionsCollapsesAndExpandAllReverses

	self createSlide.
	self presentation
		addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'B' firstSlide: (self presentation slideAt: 2).
	self tool collapseAllSections.
	self
		assert: (self presentation sectionNamed: 'A') isCollapsed;
		assert: (self presentation sectionNamed: 'B') isCollapsed.
	self tool expandAllSections.
	self
		deny: (self presentation sectionNamed: 'A') isCollapsed;
		deny: (self presentation sectionNamed: 'B') isCollapsed
