section hierarchy tests
testDirectChildSectionsExcludesGrandchildren

	3 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Parent' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Child' firstSlide: (self presentation slideAt: 2);
		addSectionNamed: 'Grandchild' firstSlide: (self presentation slideAt: 3).
	self presentation
		indentSection: (self presentation sectionNamed: 'Child');
		indentSection: (self presentation sectionNamed: 'Grandchild');
		indentSection: (self presentation sectionNamed: 'Grandchild').
	self
		assert: (self presentation
			directChildSectionsOf: (self presentation sectionNamed: 'Parent')) size
			equals: 1;
		assert: (self presentation
			directChildSectionsOf: (self presentation sectionNamed: 'Parent')) first
			equals: (self presentation sectionNamed: 'Child')
