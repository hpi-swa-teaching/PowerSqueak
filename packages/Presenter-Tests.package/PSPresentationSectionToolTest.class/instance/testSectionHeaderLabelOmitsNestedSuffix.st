section header tests
testSectionHeaderLabelOmitsNestedSuffix

	| parent header label |
	2 timesRepeat: [self createSlide].
	self presentation
		addSectionNamed: 'Parent' firstSlide: (self presentation slideAt: 1);
		addSectionNamed: 'Child' firstSlide: (self presentation slideAt: 2).
	self presentation indentSection: (self presentation sectionNamed: 'Child').
	parent := self presentation sectionNamed: 'Parent'.
	parent collapsed: true.
	header := PSSectionHeader forSection: parent tool: self tool.
	label := header labelText.
	self
		assert: (label includesSubstring: '(3)');
		deny: (label includesSubstring: 'nested')
