section collapse tests
testSectionHeaderExpandAllExpandsSections

	| section |
	self createSlide.
	self presentation
		addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'B' firstSlide: (self presentation slideAt: 2).
	self presentation collapseAllSections.
	section := self presentation sectionNamed: 'A'.
	(self tool miniatureController sectionHeaderFor: section) expandAll.
	self
		deny: (self presentation sectionNamed: 'A') collapsed;
		deny: (self presentation sectionNamed: 'B') collapsed
