section collapse tests
testCollapsedSectionDoesNotHideOwnHeader

	| parent child |
	2 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Parent' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Child' firstSlide: (self presentation slideAt: 2).
	self presentation indentSection: (self presentation sectionNamed: 'Child').
	parent := self presentation sectionNamed: 'Parent'.
	child := self presentation sectionNamed: 'Child'.
	parent collapsed: true.
	self deny: (self presentation isSectionHidden: parent).
	self assert: (self presentation isSectionHidden: child)
