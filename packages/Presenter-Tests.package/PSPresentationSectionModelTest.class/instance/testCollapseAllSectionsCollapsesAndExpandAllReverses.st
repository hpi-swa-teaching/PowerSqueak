section collapse tests
testCollapseAllSectionsCollapsesAndExpandAllReverses

	self createSlide.
	self presentation
		addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'B' firstSlide: (self presentation slideAt: 2).
	self presentation collapseAllSections.
	self
		assert: (self presentation sectionNamed: 'A') collapsed;
		assert: (self presentation sectionNamed: 'B') collapsed.
	self presentation expandAllSections.
	self
		deny: (self presentation sectionNamed: 'A') collapsed;
		deny: (self presentation sectionNamed: 'B') collapsed