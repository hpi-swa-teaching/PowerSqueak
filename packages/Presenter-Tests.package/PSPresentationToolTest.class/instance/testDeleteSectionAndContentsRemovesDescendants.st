section deletion tests
testDeleteSectionAndContentsRemovesDescendants

	2 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Parent' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Child' firstSlide: (self presentation slideAt: 2).
	self presentation indentSection: (self presentation sectionNamed: 'Child').
	self presentation
		deleteSectionAndContents: (self presentation sectionNamed: 'Parent').
	self
		deny: (self presentation hasSectionNamed: 'Parent');
		deny: (self presentation hasSectionNamed: 'Child')
