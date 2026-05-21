section level tests
testIndentSectionIncreasesLevel

	| parent child |
	self createSlide.
	self presentation
		addSectionNamed: 'Parent' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Child' firstSlide: (self presentation slideAt: 2).
	parent := self presentation sectionNamed: 'Parent'.
	child := self presentation sectionNamed: 'Child'.
	self presentation indentSection: child.
	self
		assert: parent level equals: 1;
		assert: child level equals: 2
