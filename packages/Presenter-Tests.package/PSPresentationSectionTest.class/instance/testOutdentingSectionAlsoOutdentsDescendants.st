section indent tests
testOutdentingSectionAlsoOutdentsDescendants

	| top middle bottom |
	3 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Top' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Middle' firstSlide: (self presentation slideAt: 2);
		addSectionNamed: 'Bottom' firstSlide: (self presentation slideAt: 3).
	top := self presentation sectionNamed: 'Top'.
	middle := self presentation sectionNamed: 'Middle'.
	bottom := self presentation sectionNamed: 'Bottom'.
	self presentation indentSection: middle.
	self presentation indentSection: bottom.
	self presentation indentSection: bottom.
	self
		assert: middle level equals: 2;
		assert: bottom level equals: 3.
	self presentation outdentSection: middle.
	self
		assert: top level equals: 1;
		assert: middle level equals: 1;
		assert: bottom level equals: 2
