section indent tests
testIndentingSectionAlsoIndentsDescendants

	| parent child grandchild |
	3 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Parent' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Child' firstSlide: (self presentation slideAt: 2);
		addSectionNamed: 'Grandchild' firstSlide: (self presentation slideAt: 3).
	parent := self presentation sectionNamed: 'Parent'.
	child := self presentation sectionNamed: 'Child'.
	grandchild := self presentation sectionNamed: 'Grandchild'.
	self presentation indentSection: child.
	self presentation indentSection: grandchild.
	self presentation indentSection: grandchild.
	self
		assert: parent level equals: 1;
		assert: child level equals: 2;
		assert: grandchild level equals: 3.
	self presentation indentSection: child.
	self
		assert: parent level equals: 1;
		assert: child level equals: 3;
		assert: grandchild level equals: 4
