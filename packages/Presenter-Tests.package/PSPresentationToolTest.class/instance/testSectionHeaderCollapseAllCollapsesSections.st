section collapse tests
testSectionHeaderCollapseAllCollapsesSections

	| section |
	self createSlide.
	self presentation
		addSectionNamed: 'A' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'B' firstSlide: (self presentation slideAt: 2).
	section := self presentation sectionNamed: 'A'.
	(self tool sectionHeaderFor: section) collapseAll.
	self
		assert: (self presentation sectionNamed: 'A') isCollapsed;
		assert: (self presentation sectionNamed: 'B') isCollapsed
